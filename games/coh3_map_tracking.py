"""Map-specific resource point capture and HUD labels for Company of Heroes 3.

Coordinates are stored normalized (0..1) against the tactical-map rectangle.
Each map is stored as a separate JSON file in games/coh3_maps.
"""
import json
import re
from pathlib import Path

from talon import Context, Module, actions, imgui, ui
from talon.canvas import Canvas
from talon.types import Rect

mod = Module()
ctx = Context()

mod.list("coh3_map", desc="Available Company of Heroes 3 maps")
mod.list("coh3_point", desc="Configured spoken phrases for map points")
mod.list("coh3_category", desc="COH3 map point categories")

MAP_DIR = Path(__file__).parent / "coh3_maps"
CATEGORIES = ("munitions", "fuel", "manpower", "victory")
CATEGORY_PREFIX = {
    "munitions": "M",
    "fuel": "F",
    "manpower": "P",
    "victory": "V",
}
KEYBOARD_NAME = "coh3_map_points"

_current_map = None
_current_path = None
_current_data = None
_map_label_canvas = None


def _slug(value):
    value = re.sub(r"[^a-z0-9]+", "_", value.lower()).strip("_")
    if not value:
        raise ValueError("Map name must contain letters or numbers")
    return value


def _number_to_words(value: str):
    digits = {
        "0": "zero",
        "1": "one",
        "2": "two",
        "3": "three",
        "4": "four",
        "5": "five",
        "6": "six",
        "7": "seven",
        "8": "eight",
        "9": "nine",
    }
    return " ".join(digits[d] for d in value if d in digits)


def _normalize_spoken_phrase(spoken: str, point_id: str = ""):
    if not isinstance(spoken, str):
        raise ValueError(f"Spoken phrase for {point_id or 'point'} must be a string")
    phrase = spoken.strip().lower()
    if not phrase:
        raise ValueError(f"Spoken phrase for {point_id or 'point'} is required")
    phrase = phrase.replace("_", " ")
    if re.fullmatch(r"[a-z]+\d+", phrase):
        prefix, suffix = re.match(r"([a-z]+)(\d+)", phrase).groups()
        return f"{prefix} {_number_to_words(suffix)}"
    if re.fullmatch(r"\d+", phrase):
        return _number_to_words(phrase)
    return phrase


def _map_files():
    MAP_DIR.mkdir(parents=True, exist_ok=True)
    return sorted(MAP_DIR.glob("*.json"))


def _read_map(path):
    with path.open("r", encoding="utf-8") as file:
        data = json.load(file)
    _validate_map(data)
    return data


def _validate_map(data):
    if not isinstance(data, dict):
        raise ValueError("Map configuration must be a JSON object")
    if not data.get("mapName"):
        raise ValueError("Map configuration requires mapName")
    if data.get("gameMode") not in ("annihilation", "victoryPoint"):
        raise ValueError("gameMode must be annihilation or victoryPoint")
    points = data.get("points")
    if not isinstance(points, dict):
        raise ValueError("Map configuration requires a points object")
    for category in CATEGORIES:
        entries = points.get(category, [])
        if not isinstance(entries, list):
            raise ValueError(f"{category} must be a list")
        for point in entries:
            if not isinstance(point, dict):
                raise ValueError(f"Each {category} point must be an object")
            if not point.get("id") or not point.get("spoken"):
                raise ValueError(f"Each {category} point requires id and spoken")
            point["spoken"] = _normalize_spoken_phrase(point["spoken"], point.get("id"))
            if not isinstance(point.get("x"), (int, float)) or not 0 <= point["x"] <= 1:
                raise ValueError(f"{point['id']} x must be between 0 and 1")
            if not isinstance(point.get("y"), (int, float)) or not 0 <= point["y"] <= 1:
                raise ValueError(f"{point['id']} y must be between 0 and 1")


def _save_current():
    if _current_path is None or _current_data is None:
        raise ValueError("Load or create a map first")
    _validate_map(_current_data)
    with _current_path.open("w", encoding="utf-8") as file:
        json.dump(_current_data, file, indent=2, ensure_ascii=False)
        file.write("\n")


def _point_entries():
    if not _current_data:
        return []
    return [
        point
        for category in CATEGORIES
        for point in _current_data["points"].get(category, [])
    ]


def _clear_map_labels():
    global _map_label_canvas
    if _map_label_canvas is not None:
        try:
            _map_label_canvas.unregister("draw", _paint_map_labels)
        except Exception:
            pass
        try:
            _map_label_canvas.close()
        except Exception:
            pass
        _map_label_canvas = None


def _paint_map_labels(canvas):
    if not _current_data:
        return
    bounds = _current_data.get("tacticalMapBounds")
    if not bounds or not all(key in bounds for key in ("left", "top", "right", "bottom")):
        return
    left, top = bounds["left"], bounds["top"]
    width = bounds["right"] - left
    height = bounds["bottom"] - top
    if width <= 0 or height <= 0:
        return

    canvas.paint.typeface = "Segoe UI"
    canvas.paint.textsize = 18
    canvas.paint.style = canvas.paint.Style.FILL
    for point in _point_entries():
        x = round(left + point["x"] * width)
        y = round(top + point["y"] * height)
        text = point["id"]
        text_rect = canvas.paint.measure_text(text)[1]
        padding = 6
        box_w = text_rect.width + padding * 2
        box_h = text_rect.height + padding * 2
        label_x = x - box_w - 12
        label_y = y - box_h - 12

        canvas.paint.color = "000000"
        canvas.draw_rect(Rect(label_x, label_y, box_w, box_h))
        canvas.paint.color = "FFFF00"
        canvas.draw_text(text, label_x + padding, label_y + box_h - padding)


def _refresh_labels():
    # Hide any labels left by the previously loaded map before rebuilding.
    _clear_map_labels()
    if not _current_data:
        return
    bounds = _current_data.get("tacticalMapBounds")
    if not bounds or not all(key in bounds for key in ("left", "top", "right", "bottom")):
        return
    left, top = bounds["left"], bounds["top"]
    width = bounds["right"] - left
    height = bounds["bottom"] - top
    if width <= 0 or height <= 0:
        return

    screen = ui.active_window().screen if ui.active_window() else ui.screens()[0]
    canvas = Canvas.from_screen(screen)
    canvas.blocks_mouse = False
    canvas.register("draw", _paint_map_labels)
    canvas.freeze()
    _map_label_canvas = canvas


def _update_talon_lists():
    """Publish the current map and point choices to Talon's voice grammar."""
    maps = {}
    for path in _map_files():
        try:
            data = _read_map(path)
            maps[data["mapName"]] = path.stem
        except (OSError, ValueError, json.JSONDecodeError):
            continue

    points = {}
    for point in _point_entries():
        points[point["spoken"]] = point["id"]

    ctx.lists["user.coh3_map"] = maps
    ctx.lists["user.coh3_point"] = points
    ctx.lists["user.coh3_category"] = {
        "munitions": "munitions",
        "fuel": "fuel",
        "manpower": "manpower",
        "victory": "victory",
    }


@mod.action_class
class Actions:
    def coh3_create_map(map_name: str, game_mode: str):
        """Create and load a new COH3 map configuration."""
        global _current_map, _current_path, _current_data
        if game_mode not in ("annihilation", "victoryPoint"):
            raise ValueError("Use annihilation or victoryPoint")
        MAP_DIR.mkdir(parents=True, exist_ok=True)
        path = MAP_DIR / f"{_slug(map_name)}.json"
        if path.exists():
            raise ValueError(f"Map already exists: {map_name}")
        _current_map = map_name
        _current_path = path
        _current_data = {
            "mapName": map_name,
            "gameMode": game_mode,
            "tacticalMapBounds": None,
            "points": {category: [] for category in CATEGORIES},
        }
        _save_current()
        _update_talon_lists()
        actions.app.notify(f"COH3 map created: {map_name}")

    def coh3_load_map(map_slug: str):
        """Load a map configuration by its file slug."""
        global _current_map, _current_path, _current_data
        path = MAP_DIR / f"{_slug(map_slug)}.json"
        if not path.exists():
            raise ValueError(f"Map configuration not found: {map_slug}")
        data = _read_map(path)
        _current_map = data["mapName"]
        _current_path = path
        _current_data = data
        _update_talon_lists()
        _refresh_labels()
        actions.app.notify(f"COH3 map loaded: {_current_map}")

    def coh3_set_map_corner(corner: str):
        """Capture the current mouse position as a tactical-map corner."""
        if _current_data is None:
            raise ValueError("Create or load a map first")
        if corner not in ("topLeft", "bottomRight"):
            raise ValueError("Corner must be topLeft or bottomRight")
        x = actions.user.query_mouse_position_x()
        y = actions.user.query_mouse_position_y()
        bounds = _current_data.get("tacticalMapBounds") or {}
        if corner == "topLeft":
            bounds.update({"left": x, "top": y})
        else:
            bounds.update({"right": x, "bottom": y})
        _current_data["tacticalMapBounds"] = bounds
        if all(key in bounds for key in ("left", "top", "right", "bottom")):
            if bounds["right"] <= bounds["left"] or bounds["bottom"] <= bounds["top"]:
                raise ValueError("Bottom-right corner must be below and right of top-left")
        _save_current()
        _refresh_labels()
        actions.app.notify(f"COH3 tactical map {corner} saved")

    def coh3_capture_point(category: str, spoken: str):
        """Capture the mouse position as a point using its custom spoken phrase."""
        if _current_data is None:
            raise ValueError("Create or load a map first")
        if category not in CATEGORIES:
            raise ValueError(f"Unknown point category: {category}")
        if category == "victory" and _current_data["gameMode"] == "annihilation":
            raise ValueError("Annihilation maps do not have victory points")
        spoken = _normalize_spoken_phrase(spoken, "captured point")
        if any(point["spoken"].lower() == spoken for point in _point_entries()):
            raise ValueError(f"That spoken phrase is already in use: {spoken}")
        bounds = _current_data.get("tacticalMapBounds")
        if not bounds or not all(key in bounds for key in ("left", "top", "right", "bottom")):
            actions.app.notify(
                "Set tactical-map corners first: say 'map corner top left' then 'map corner bottom right'"
            )
            return
        width = bounds["right"] - bounds["left"]
        height = bounds["bottom"] - bounds["top"]
        if width <= 0 or height <= 0:
            actions.app.notify("Tactical-map bounds are invalid; recapture top-left and bottom-right corners")
            return

        x = actions.user.query_mouse_position_x()
        y = actions.user.query_mouse_position_y()
        normalized_x = (x - bounds["left"]) / width
        normalized_y = (y - bounds["top"]) / height
        if not 0 <= normalized_x <= 1 or not 0 <= normalized_y <= 1:
            actions.app.notify("Mouse cursor is outside the calibrated tactical map")
            return

        entries = _current_data["points"][category]
        prefix = CATEGORY_PREFIX[category]
        numbers = [
            int(match.group(1))
            for point in _point_entries()
            if (match := re.fullmatch(prefix + r"(\d+)", point["id"]))
        ]
        point_id = f"{prefix}{max(numbers, default=0) + 1}"
        entries.append({
            "id": point_id,
            "spoken": spoken,
            "x": round(normalized_x, 6),
            "y": round(normalized_y, 6),
        })
        _save_current()
        _update_talon_lists()
        _refresh_labels()
        actions.app.notify(f"Saved {point_id} as {spoken}")

    def _coh3_point_screen_position(point_id: str):
        if _current_data is None:
            raise ValueError("Create or load a map first")
        bounds = _current_data.get("tacticalMapBounds")
        if not bounds or not all(key in bounds for key in ("left", "top", "right", "bottom")):
            raise ValueError("Set tactical-map corners first")

        for category in CATEGORIES:
            for point in _current_data["points"].get(category, []):
                if point["id"] == point_id:
                    left, top = bounds["left"], bounds["top"]
                    width = bounds["right"] - left
                    height = bounds["bottom"] - top
                    return (
                        round(left + point["x"] * width),
                        round(top + point["y"] * height),
                    )
        raise ValueError(f"Unknown map point: {point_id}")

    def coh3_capture_point(point_id: str):
        """Shift-right-click a single point on the tactical map."""
        x, y = self._coh3_point_screen_position(point_id)
        actions.mouse_move(x, y)
        actions.key("shift:down")
        actions.sleep("20ms")
        actions.mouse_click(1)
        actions.sleep("20ms")
        actions.key("shift:up")
        actions.app.notify(f"Shift right-clicked {point_id}")

    def coh3_capture_category(category: str):
        """Shift-right-click every point in a category on the tactical map."""
        if _current_data is None:
            raise ValueError("Create or load a map first")
        if category not in CATEGORIES:
            raise ValueError(f"Unknown point category: {category}")
        for point in _current_data["points"].get(category, []):
            self.coh3_capture_point(point["id"])

    def coh3_refresh_map_labels():
        """Refresh the labels for the currently loaded COH3 map."""
        _refresh_labels()

    def coh3_hide_command_overlay():
        """Hide the Heroes Three commands overlay."""
        gui_heroes_commands.hide()

    def coh3_show_command_overlay():
        """Show the Heroes Three commands overlay without stealing focus."""
        if gui_heroes_commands.showing:
            gui_heroes_commands.hide()
        gui_heroes_commands.show()


@imgui.open(y=0, x=0)
def gui_heroes_commands(gui: imgui.GUI):
    gui.text("Heroes Three commands")
    gui.line()
    for line in [
        "load heroes three map <map>",
        "map corner left / top left",
        "map corner right / bottom right",
        "record map point <category> spoken as <name>",
        "refresh map labels",
        "create annihilation map <name>",
        "create victory point map <name>",
    ]:
        gui.text(line)

    gui.spacer()
    if gui.button("Close"):
        actions.user.coh3_hide_command_overlay()


# Populate the map-name list as soon as this module loads.
_update_talon_lists()
