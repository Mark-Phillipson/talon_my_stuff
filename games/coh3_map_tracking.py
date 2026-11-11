"""Map-specific resource point capture and HUD labels for Company of Heroes 3.

Coordinates are stored normalized (0..1) against the tactical-map rectangle.
Each map is stored as a separate JSON file in games/coh3_maps.
"""
import json
import re
from pathlib import Path

from talon import Module, actions

mod = Module()

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


def _slug(value):
    value = re.sub(r"[^a-z0-9]+", "_", value.lower()).strip("_")
    if not value:
        raise ValueError("Map name must contain letters or numbers")
    return value


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


def _refresh_labels():
    if not _current_data:
        return
    bounds = _current_data.get("tacticalMapBounds")
    if not bounds:
        return
    left, top = bounds["left"], bounds["top"]
    width = bounds["right"] - left
    height = bounds["bottom"] - top
    if width <= 0 or height <= 0:
        return

    labels = []
    for point in _point_entries():
        x = round(left + point["x"] * width)
        y = round(top + point["y"] * height) - 32

        def _noop():
            return None

        label = actions.user.hud_create_virtual_key(
            _noop,
            text=point["id"],
            colour="000000",
            text_colour="FFFF00",
            x=x,
            y=y,
            width=64,
            height=32,
        )
        labels.append(label)

    if labels:
        actions.user.hud_register_virtual_keyboard(
            KEYBOARD_NAME,
            labels,
            layout_style="full",
            alignment="top",
            horizontal_key_amount=len(labels),
            vertical_key_amount=1,
        )
        actions.user.hud_set_virtual_keyboard(KEYBOARD_NAME)


@mod.list("user.coh3_map")
def coh3_map():
    """Available map names, spoken as their configured mapName."""
    result = {}
    for path in _map_files():
        try:
            data = _read_map(path)
            result[data["mapName"]] = path.stem
        except (OSError, ValueError, json.JSONDecodeError):
            continue
    return result


@mod.list("user.coh3_point")
def coh3_point():
    """Configured spoken point phrases mapped to stable point IDs."""
    result = {}
    for point in _point_entries():
        result[point["spoken"]] = point["id"]
    return result


@mod.list("user.coh3_category")
def coh3_category():
    return {category: category for category in CATEGORIES}


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
        spoken = spoken.strip().lower()
        if not spoken:
            raise ValueError("A spoken phrase is required")
        if any(point["spoken"].lower() == spoken for point in _point_entries()):
            raise ValueError(f"That spoken phrase is already in use: {spoken}")
        bounds = _current_data.get("tacticalMapBounds")
        if not bounds or not all(key in bounds for key in ("left", "top", "right", "bottom")):
            raise ValueError("Capture the tactical-map top-left and bottom-right corners first")
        width = bounds["right"] - bounds["left"]
        height = bounds["bottom"] - bounds["top"]
        if width <= 0 or height <= 0:
            raise ValueError("Tactical-map bounds are invalid")

        x = actions.user.query_mouse_position_x()
        y = actions.user.query_mouse_position_y()
        normalized_x = (x - bounds["left"]) / width
        normalized_y = (y - bounds["top"]) / height
        if not 0 <= normalized_x <= 1 or not 0 <= normalized_y <= 1:
            raise ValueError("Mouse cursor is outside the calibrated tactical map")

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
        _refresh_labels()
        actions.app.notify(f"Saved {point_id} as {spoken}")

    def coh3_refresh_map_labels():
        """Refresh the labels for the currently loaded COH3 map."""
        _refresh_labels()
