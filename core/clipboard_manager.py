from talon import Module, settings, imgui, Context
import time
import os
import json
from dataclasses import dataclass
from typing import Optional
from talon import clip, cron


clipboard_manager_gui = None
last_clipboard_text = None

def poll_clipboard():
    global last_clipboard_text
    try:
        current = clip.text()
        if current != last_clipboard_text:
            clipboard_update(current)
            last_clipboard_text = current
    except Exception as e:
            print(f"Clipboard polling error: {e}")
              
@dataclass
class ClipItem:
    text: str
    mime: Optional[str] = None
    image: Optional[str] = None

def test_clipitem():
    item = ClipItem("test", None, None)
    print(f"ClipItem created: {item}")
    
mod = Module()
ctx = Context()
mod.setting(
    "clipboard_manager_max_rows",
    type=int,
    default=20,
)
mod.setting(
    "clipboard_manager_ignore_dictation",
    type=bool,
    default=True,
    desc="Ignore clipboard changes during dictation and mixed modes to prevent pollution of clipboard history",
)
mod.setting(
    "clipboard_manager_min_time_between_updates",
    type=float,
    default=0.5,
    desc="Minimum time (in seconds) between clipboard updates to prevent rapid internal operations from polluting history",
)
CLIPBOARD_HISTORY_LIMIT = 200
clip_history = []

def add_test_item_to_history():
    item = ClipItem("added", None, None)
    clip_history.append(item)
    print(f"Added to history: {item}")

CLIPBOARD_HISTORY_FILE = os.path.expanduser(os.path.join(os.path.dirname(__file__), "clipboard_history.json"))

def save_clipboard_history():
    try:
        data = []
        for item in clip_history[:CLIPBOARD_HISTORY_LIMIT]:
            entry = {
                "text": item.text,
                "mime": item.mime,
                "image": item.image,
            }
            data.append(entry)
        with open(CLIPBOARD_HISTORY_FILE, "w", encoding="utf-8") as f:
            json.dump(data, f, ensure_ascii=False, indent=2)
        print("Clipboard history saved.")
    except Exception as e:
        print(f"Failed to save clipboard history: {e}")

def load_clipboard_history():
    global clip_history
    try:
        if os.path.exists(CLIPBOARD_HISTORY_FILE):
            with open(CLIPBOARD_HISTORY_FILE, "r", encoding="utf-8") as f:
                data = json.load(f)
            loaded = []
            for entry in data:
                loaded.append(ClipItem(entry["text"], entry.get("mime"), entry.get("image")))
            clip_history = loaded
            print("Clipboard history loaded.")
    except Exception as e:
        print(f"Failed to load clipboard history: {e}")

def clear_clipboard_history():
    global clip_history
    clip_history = []
    print("Clipboard history cleared.")
def clipboard_update(new_text: str):
    """Monitor clipboard and add new item if it passes filter."""
    # Simple filter: ignore empty or duplicate text
    if not new_text or (clip_history and clip_history[0].text == new_text):
        print("Clipboard update ignored (empty or duplicate).")
        return
    item = ClipItem(new_text, None, None)
    clip_history.insert(0, item)
    if len(clip_history) > CLIPBOARD_HISTORY_LIMIT:
        del clip_history[CLIPBOARD_HISTORY_LIMIT:]
    print(f"Clipboard updated: {item}")




@imgui.open()
def clipboard_manager_gui(gui: imgui.GUI):
    gui.text("Clipboard Manager")
    gui.line()
    if not clip_history:
        gui.text("(Clipboard history is empty)")
    else:
        for i, item in enumerate(clip_history[:settings.get("user.clipboard_manager_max_rows")]):
            gui.text(f"{i+1}: {item.text}")

@mod.action_class
class Actions:
    def test_imgui_toggle():
        """Show/hide the test ImGui window for debugging UI rendering"""
        if test_imgui_window.showing:
            test_imgui_window.close()
            print("Test ImGui window closed.")
        else:
            ctx.tags = ["user.clipboard_manager"]
            test_imgui_window.open()
            print("Test ImGui window opened.")
    def clipboard_manager_toggle():
        """Show/hide the clipboard manager UI"""
        if clipboard_manager_gui.showing:
            clipboard_manager_gui.close()
            print("Clipboard manager toggle called! (closed)")
        else:
            clipboard_manager_gui.open()
            print("Clipboard manager toggle called! (opened)")

    def test_clipitem_action():
        """Test creating a ClipItem as an action"""
        item = ClipItem("test", None, None)
        print(f"ClipItem created: {item}")
    def add_test_item_action():
        """Add a test item to the clipboard history"""
        add_test_item_to_history()
    def save_clipboard_history_action():
        """Save clipboard history to file"""
        save_clipboard_history()
    def load_clipboard_history_action():
        """Load clipboard history from file"""
        load_clipboard_history()
    def clear_clipboard_history_action():
        """Clear clipboard history"""
        clear_clipboard_history()
    def clipboard_update_action(text: str):
        """Manually update clipboard with given text (for testing)"""
        clipboard_update(text)
    
# Start polling the clipboard every 500ms
cron.interval("500ms", poll_clipboard)