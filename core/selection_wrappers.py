import json
from pathlib import Path

from talon import Module, actions, clip

mod = Module()

_SELECTION_FUNCTIONS = {}
_SELECTION_FUNCTIONS_PATH = Path(__file__).with_name("selection_functions.json")


def _get_clip_text():
    try:
        return clip.get()
    except Exception:
        try:
            return actions.clip.get_text()
        except Exception:
            try:
                return actions.clip.get()
            except Exception:
                return None


def _set_clip_text(text: str):
    try:
        clip.set_text(text)
    except Exception:
        try:
            actions.clip.set_text(text)
        except Exception:
            try:
                actions.clip.set(text)
            except Exception:
                pass


def _format_default_value(default_value: str, fallback: str = "0") -> str:
    if default_value is None:
        return fallback

    value = str(default_value).strip()
    if value == "":
        return '""'
    return value or fallback


def _build_formatter(template: str):
    def formatter(value: str, default_value: str = "0") -> str:
        token = (value or "").strip()
        default = _format_default_value(default_value, "0")
        return template.format(value=token, default=default)

    return formatter


def _load_selection_function_config() -> dict:
    registry = {}

    try:
        with open(_SELECTION_FUNCTIONS_PATH, "r", encoding="utf-8") as handle:
            config = json.load(handle)
    except Exception:
        config = {}

    if isinstance(config, dict):
        for name, template in config.items():
            if not name or not isinstance(template, str):
                continue
            registry[name.strip().lower()] = _build_formatter(template)

    if not registry:
        registry["nz"] = _build_formatter("Nz({value},{default})")
        registry["nvl"] = _build_formatter("Nvl({value},{default})")

    return registry


def _selection_function_registry(force_reload: bool = False):
    """Registry of selection-wrapping functions loaded from JSON config."""
    global _SELECTION_FUNCTIONS
    if force_reload or not _SELECTION_FUNCTIONS:
        _SELECTION_FUNCTIONS = _load_selection_function_config()

    return _SELECTION_FUNCTIONS


def _apply_selection_function_to_text(function_name: str, value: str, default_value: str = "0") -> str:
    if value is None:
        return ""

    name = (function_name or "").strip()
    if not name:
        return value

    formatter = _selection_function_registry().get(name.lower())
    if formatter is None:
        return f"{name}({value})"

    return formatter(value, default_value)


def _read_selection_text() -> str:
    selected = None
    try:
        if hasattr(actions.edit, "selected_text"):
            selected = actions.edit.selected_text()
    except Exception:
        selected = None

    if selected is None:
        try:
            actions.key("ctrl-c")
            actions.sleep("50ms")
        except Exception:
            pass
        selected = _get_clip_text()

    return selected or ""


@mod.action_class
class Actions:
    def apply_selection_function(function_name: str, default_value: str = "0", paste: bool = False) -> str:
        """Wrap the current selection in a registered function call.

        Example: selected `me.TurnAroundTimeIDComboBox` -> `Nz(me.TurnAroundTimeIDComboBox,0)`
        """
        selected = _read_selection_text()
        if not selected:
            return ""

        formatted = _apply_selection_function_to_text(function_name, selected, default_value)

        try:
            if paste:
                _set_clip_text(formatted)
                actions.key("ctrl-v")
            else:
                actions.insert(formatted)
        except Exception:
            _set_clip_text(formatted)
            actions.key("ctrl-v")

        return formatted

    def apply_function_to_text(function_name: str, value: str, default_value: str = "0") -> str:
        """Return a wrapped value without editing the current selection."""
        return _apply_selection_function_to_text(function_name, value, default_value)

    def register_selection_function(function_name: str, formatter: object):
        """Register a new function wrapper for selection formatting."""
        key = (function_name or "").strip()
        if not key:
            return
        _selection_function_registry()[key.lower()] = formatter

    def reload_selection_functions() -> str:
        """Reload function templates from the JSON registry."""
        _selection_function_registry(force_reload=True)
        return str(sorted(_selection_function_registry().keys()))
