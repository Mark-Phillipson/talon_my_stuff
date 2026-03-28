from talon import Module, actions, clip
import subprocess
import time

mod = Module()

DEFAULT_ADB_DEVICE = "R3CW40BQS0M"
_current_adb_device = DEFAULT_ADB_DEVICE

@mod.action_class
class Actions:
    def phone_link_set_adb_device(device: str):
        """Set the target adb device id to use for subsequent phone adb commands."""
        global _current_adb_device
        _current_adb_device = device

    def phone_link_get_adb_device() -> str:
        """Get the currently configured adb device id."""
        return _current_adb_device

    def phone_link_slow_type(text: str, delay: float = 0.06):
        """Type text into Phone Link one chunk at a time with small sleep.

        This uses clipboard paste per-chunk as a fallback for unstable direct insert.
        Returns quickly for short text.
        """
        if not text:
            return
        for ch in text:
            clip.set_text(ch)
            actions.key("ctrl-v")
            time.sleep(delay)

    def phone_link_type_via_clipboard(text: str):
        """Type full text by setting clipboard and pasting once."""
        clip.set_text(text)
        actions.key("ctrl-v")

    def phone_link_physical_type(text: str):
        """Type text through repeated key events, to emulate typing with weak clipboard support."""
        if not text:
            return
        for ch in text:
            if ch.isalpha():
                key = ch.lower()
                if ch.isupper():
                    actions.key(f"shift-{key}")
                else:
                    actions.key(key)
            elif ch.isdigit():
                actions.key(ch)
            else:
                # some punctuation may not be passed through by key(); use insert() fallback
                try:
                    actions.key(ch)
                except Exception:
                    actions.insert(ch)
            time.sleep(0.04)

    def phone_link_adb_type(text: str):
        """Type text into Android using adb shell input text (requires adb in PATH)."""
        if not text:
            return
        try:
            escaped = text.replace("%", "%25").replace(" ", "%s").replace("\"", "\\\"")
            device = _current_adb_device
            subprocess.run(["adb", "-s", device, "shell", "input", "text", escaped], check=True)
        except Exception as e:
            actions.notify(f"ADB type failed: {e}")

    def phone_link_adb_keyevent(key: str):
        """Send adb keyevent to Android via adb (e.g., enter, backspace)."""
        key_map = {
            "enter": "66",
            "backspace": "67",
            "tab": "61",
            "home": "3",
            "desktop": "3",
            "escape": "111",
            "del": "112",
        }
        if key in key_map:
            code = key_map[key]
        else:
            code = key
        try:
            device = _current_adb_device
            subprocess.run(["adb", "-s", device, "shell", "input", "keyevent", code], check=True)
        except Exception as e:
            actions.notify(f"ADB key event failed: {e}")

    def phone_link_terminal_comment(text: str):
        """Send adb text command to phone in background subprocess (no UI switch)."""
        if not text:
            return
        escaped = text.replace("%", "%25").replace(" ", "%s").replace('"', '\\"')
        device = _current_adb_device
        cmd = ["adb", "-s", device, "shell", "input", "text", escaped]
        try:
            # On Windows, hide the command window while the subprocess runs
            startupinfo = subprocess.STARTUPINFO()
            startupinfo.dwFlags |= subprocess.STARTF_USESHOWWINDOW
            subprocess.run(
                cmd,
                check=True,
                stdout=subprocess.PIPE,
                stderr=subprocess.PIPE,
                startupinfo=startupinfo,
                creationflags=subprocess.CREATE_NO_WINDOW,
            )
            actions.notify(f"Sent to phone: {text}")
        except subprocess.CalledProcessError as e:
            actions.notify(f"ADB command failed: {e.returncode} {e.stderr.decode(errors='ignore')}")
        except Exception as e:
            actions.notify(f"Terminal comment failed: {e}")
