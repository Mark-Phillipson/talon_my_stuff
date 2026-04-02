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
        """Get the currently configured adb device ID."""
        return _current_adb_device

    def phone_link_set_adb_device_from_clipboard():
        """Set ADB device from clipboard text (copy device id first)."""
        device = clip.get_text().strip()
        if not device:
            actions.app.notify("Phone Link", "Clipboard is empty. Copy adb device id first.")
            return
        actions.user.phone_link_set_adb_device(device)
        actions.app.notify("Phone Link", f"ADB device set to {device}")

    def phone_link_list_adb_devices() -> list:
        """Return a list of currently connected adb devices (id, state)."""
        try:
            output = subprocess.check_output(["adb", "devices", "-l"], text=True)
        except Exception:
            actions.app.notify("Phone Link", "adb not found or failed to run")
            return []
        lines = [line.strip() for line in output.splitlines() if line.strip()]
        if len(lines) <= 1:
            actions.app.notify("Phone Link", "No adb devices connected")
            return []
        devices = []
        for line in lines[1:]:
            parts = line.split()
            if len(parts) < 2:
                continue
            device_id = parts[0]
            state = parts[1]
            devices.append((device_id, state))
        actions.app.notify("Phone Link", "Devices: " + ", ".join(f"{d}({s})" for d, s in devices))
        return devices

    def phone_link_discover_adb_device():
        """Auto-select the first online adb device and set it."""
        devices = actions.user.phone_link_list_adb_devices()
        if not devices:
            actions.app.notify("Phone Link", "No adb devices found. Connect and try again.")
            return
        for device_id, state in devices:
            if state == "device":
                actions.user.phone_link_set_adb_device(device_id)
                actions.app.notify("Phone Link", f"Selected adb device: {device_id}")
                return
        actions.app.notify("Phone Link", "No device state adb device found. Check device status.")

    def phone_link_status():
        """Notify whether current adb device is connected."""
        current = actions.user.phone_link_get_adb_device()
        devices = actions.user.phone_link_list_adb_devices()
        if devices and any(d[0] == current for d in devices):
            actions.app.notify("Phone Link", f"Connected to {current}")
        elif devices:
            available = ", ".join(d[0] for d in devices)
            actions.app.notify("Phone Link", f"Current device {current} not connected. Available: {available}")
        else:
            actions.app.notify("Phone Link", "No adb devices connected.")

    def phone_link_connect():
        """Attempt to connect to the configured ADB device via tcp:5555 (wireless)."""
        current = actions.user.phone_link_get_adb_device()
        if not current:
            actions.user.phone_link_discover_adb_device()
            current = actions.user.phone_link_get_adb_device()

        if not current:
            actions.app.notify("Phone Link", "No ADB device selected. Use clipboard setup or discover first.")
            return

        try:
            subprocess.run(["adb", "connect", current], check=True)
            actions.app.notify("Phone Link", f"adb connect {current} succeeded")
        except Exception as e:
            actions.app.notify("Phone Link", f"adb connect {current} failed: {e}")

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
        except Exception:
            pass

    def phone_link_adb_keyevent(key: str):
        """Send adb keyevent to Android via adb (e.g., enter, backspace)."""
        key_map = {
            "enter": "66",
            "backspace": "67",
            "tab": "61",
            "home": "3",
            "desktop": "3",
            "escape": "111",
            "delete": "112",
        }
        if key in key_map:
            code = key_map[key]
        else:
            code = key
        try:
            device = _current_adb_device
            key_cmd = ["adb", "-s", device, "shell", "input", "keyevent", code]
            startupinfo = subprocess.STARTUPINFO()
            startupinfo.dwFlags |= subprocess.STARTF_USESHOWWINDOW
            startupinfo.wShowWindow = subprocess.SW_HIDE
            subprocess.run(
                key_cmd,
                check=True,
                stdout=subprocess.DEVNULL,
                stderr=subprocess.DEVNULL,
                stdin=subprocess.DEVNULL,
                startupinfo=startupinfo,
                creationflags=subprocess.CREATE_NO_WINDOW,
                shell=False,
            )
        except Exception:
            pass

    def phone_link_terminal_comment(text: str):
        """Send adb text command to phone in background subprocess (no UI switch)."""
        if not text:
            return
        escaped = text.replace("%", "%25").replace(" ", "%s").replace('"', '\\"')
        device = _current_adb_device
        cmd = ["adb", "-s", device, "shell", "input", "text", escaped]
        try:
            startupinfo = subprocess.STARTUPINFO()
            startupinfo.dwFlags |= subprocess.STARTF_USESHOWWINDOW
            startupinfo.wShowWindow = subprocess.SW_HIDE
            subprocess.run(
                cmd,
                check=True,
                stdout=subprocess.DEVNULL,
                stderr=subprocess.DEVNULL,
                stdin=subprocess.DEVNULL,
                startupinfo=startupinfo,
                creationflags=subprocess.CREATE_NO_WINDOW,
                shell=False,
            )
        except subprocess.CalledProcessError as e:
            actions.app.notify("Phone Link ADB", f"ADB command failed with code {e.returncode} and output: {e.output} {e}")
        except Exception as e:
            actions.app.notify("Phone Link ADB", f"Terminal comment failed: {e}")

    def phone_link_terminal_comment_case(text: str, case: str = "none"):
        """Send text to phone in the requested case: none|upper|lower|title."""
        if not text:
            return
        case_type = case.strip().lower()
        if case_type == "upper":
            text = text.upper()
        elif case_type == "lower":
            text = text.lower()
        elif case_type == "title":
            text = text.title()
        actions.user.phone_link_terminal_comment(text)

    def phone_link_fake_phone_number(number: str = None):
        """Send either a provided phone number or generate a fake random one."""
        if number and number.strip():
            actions.user.phone_link_terminal_comment(number.strip())
            return
        phoneNumber1 = actions.user.generate_random_number()
        phoneNumber2 = actions.user.generate_random_number()
        actions.user.phone_link_terminal_comment(phoneNumber1 + phoneNumber2)
