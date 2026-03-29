from talon import Module, actions, clip
import subprocess
import time

mod = Module()

DEFAULT_ADB_DEVICE = "R3CW40BQS0M"
_current_adb_device = DEFAULT_ADB_DEVICE

DEFAULT_HOST_PORT = ""
_current_host_port = DEFAULT_HOST_PORT

@mod.action_class
class Actions:
    def phone_link_set_adb_device(device: str):
        """Set the target adb device id to use for subsequent phone adb commands."""
        global _current_adb_device
        _current_adb_device = device

    def phone_link_get_adb_device() -> str:
        """Get the currently configured adb device ID."""
        return _current_adb_device

    def phone_link_set_host_port(host_port: str):
        """Set the target adb host:port (for wireless connect)."""
        global _current_host_port
        _current_host_port = host_port.strip()
        print("Phone Link: " + f"Host:port set to {_current_host_port}")

    def phone_link_get_host_port() -> str:
        """Get the currently configured host:port."""
        return _current_host_port

    def phone_link_set_host_port_from_clipboard():
        """Set host:port from clipboard text (copy ip:port first)."""
        host_port = ""
        try:
            host_port = clip.get_text().strip()
        except AttributeError:
            try:
                host_port = subprocess.check_output(
                    ["powershell", "-NoProfile", "-Command", "Get-Clipboard"],
                    text=True,
                ).strip()
            except Exception:
                pass

        if not host_port:
            print("Phone Link: " + "Clipboard is empty. Copy host:port first.")
            return

        actions.user.phone_link_set_host_port(host_port)

    def phone_link_set_adb_device_from_clipboard():
        """Set ADB device from clipboard text (copy device id first)."""
        device = ""
        try:
            device = clip.get_text().strip()
        except AttributeError:
            try:
                device = subprocess.check_output(
                    ["powershell", "-NoProfile", "-Command", "Get-Clipboard"],
                    text=True,
                ).strip()
            except Exception:
                pass

        if not device:
            print("Phone Link: " + "Clipboard is empty. Copy adb device id first.")
            return

        actions.user.phone_link_set_adb_device(device)
        print("Phone Link: " + f"ADB device set to {device}")

    def phone_link_list_adb_devices() -> list:
        """Return a list of currently connected adb devices (id, state)."""
        try:
            output = subprocess.check_output(["adb", "devices", "-l"], text=True)
        except Exception:
            print("Phone Link: " + "adb not found or failed to run")
            return []
        lines = [line.strip() for line in output.splitlines() if line.strip()]
        if len(lines) <= 1:
            print("Phone Link: " + "No adb devices connected")
            return []
        devices = []
        for line in lines[1:]:
            parts = line.split()
            if len(parts) < 2:
                continue
            device_id = parts[0]
            state = parts[1]
            devices.append((device_id, state))
        print("Phone Link: " + "Devices: " + ", ".join(f"{d}({s})" for d, s in devices))
        return devices

    def phone_link_discover_adb_device():
        """Auto-select the first online adb device and set it."""
        devices = actions.user.phone_link_list_adb_devices()
        if not devices:
            print("Phone Link: " + "No adb devices found. Connect and try again.")
            return
        for device_id, state in devices:
            if state == "device":
                actions.user.phone_link_set_adb_device(device_id)
                print("Phone Link: " + f"Selected adb device: {device_id}")
                return
        print("Phone Link: " + "No device state adb device found. Check device status.")

    def phone_link_status():
        """Notify whether current adb device is connected."""
        current = actions.user.phone_link_get_adb_device()
        devices = actions.user.phone_link_list_adb_devices()
        if devices and any(d[0] == current for d in devices):
            print("Phone Link: " + f"Connected to {current}")
        elif devices:
            available = ", ".join(d[0] for d in devices)
            print("Phone Link: " + f"Current device {current} not connected. Available: {available}")
        else:
            print("Phone Link: " + "No adb devices connected.")

    def phone_link_connect():
        """Attempt to connect to the configured ADB device via tcp:5555 (wireless)."""
        current = actions.user.phone_link_get_adb_device()
        if not current:
            actions.user.phone_link_discover_adb_device()
            current = actions.user.phone_link_get_adb_device()

        target = current
        if not target:
            host_port = actions.user.phone_link_get_host_port()
            if host_port:
                target = host_port

        if not target:
            print("Phone Link: " + "No ADB device selected. Use clipboard setup or discover first, or set host:port.")
            return

        try:
            subprocess.run(["adb", "connect", target], check=True)
            actions.user.phone_link_set_adb_device(target)
            print("Phone Link: " + f"adb connect {target} succeeded (current target updated)")
        except Exception as e:
            print("Phone Link: " + f"adb connect {target} failed: {e}")

    def phone_link_tcpip():
        """Switch a USB-connected device to TCP/IP mode on port 5555."""
        try:
            subprocess.run(["adb", "tcpip", "5555"], check=True)
            print("Phone Link: " + "adb tcpip 5555 succeeded")
        except Exception as e:
            print("Phone Link: " + f"adb tcpip 5555 failed: {e}")

    def phone_link_connect_to_host(host_port: str):
        """Connect to a device using adb connect <host:port>."""
        try:
            subprocess.run(["adb", "connect", host_port], check=True)
            actions.user.phone_link_set_adb_device(host_port)
            print("Phone Link: " + f"adb connect {host_port} succeeded (current target updated)")
        except Exception as e:
            print("Phone Link: " + f"adb connect {host_port} failed: {e}")

    def phone_link_pair_code(pair_info: str):
        """Use adb pair <ip:port> <code> from phone Wireless debugging panel."""
        parts = pair_info.strip().split()
        if len(parts) == 2:
            target, code = parts
        elif len(parts) == 1 and ":" in parts[0]:
            print("Phone Link: " + "Provide pairing info as '<ip:port> <code>'")
            return
        else:
            print("Phone Link: " + "Invalid format. Use '<ip:port> <code>'")
            return

        try:
            subprocess.run(["adb", "pair", target, code], check=True)
            print("Phone Link: " + f"adb pair {target} succeeded")
        except Exception as e:
            print("Phone Link: " + f"adb pair {target} failed: {e}")
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
        # ADB text input requires special chars escaped as %xx and spaces as %s.
        # e.g. test@example.com -> test%40example.com
        try:
            from urllib.parse import quote
            escaped = quote(text, safe="")
            escaped = escaped.replace("%20", "%s")
        except Exception:
            escaped = text.replace("%", "%25").replace(" ", "%s").replace('"', '\\"')

        host_port = actions.user.phone_link_get_host_port()
        device = _current_adb_device or host_port

        if not device:
            print("Phone Link: " + "No ADB device configured. Use `phone link set device` or `phone link set host` first.")
            return

        def run_adb_device(target_device):
            cmd = ["adb", "-s", target_device, "shell", "input", "text", escaped]
            print(f"Phone Link ADB command: {' '.join(cmd)}")
            startupinfo = subprocess.STARTUPINFO()
            startupinfo.dwFlags |= subprocess.STARTF_USESHOWWINDOW
            startupinfo.wShowWindow = subprocess.SW_HIDE
            return subprocess.run(
                cmd,
                check=True,
                capture_output=True,
                stdin=subprocess.DEVNULL,
                startupinfo=startupinfo,
                creationflags=subprocess.CREATE_NO_WINDOW,
                shell=False,
                text=True,
            )

        try:
            result = run_adb_device(device)
            if result.stdout:
                print(f"Phone Link ADB stdout: {result.stdout.strip()}")
            if result.stderr:
                print(f"Phone Link ADB stderr: {result.stderr.strip()}")
            if device != _current_adb_device:
                actions.user.phone_link_set_adb_device(device)

        except subprocess.CalledProcessError as e:
            stderr_text = (e.stderr or "").lower()
            if "device '{}' not found".format(device).lower() in stderr_text and host_port and host_port != device:
                try:
                    result = run_adb_device(host_port)
                    if result.stdout:
                        print(f"Phone Link ADB stdout: {result.stdout.strip()}")
                    if result.stderr:
                        print(f"Phone Link ADB stderr: {result.stderr.strip()}")
                    actions.user.phone_link_set_adb_device(host_port)
                    return
                except Exception as retry_e:
                    print(f"Phone Link ADB retry exception: {retry_e}")

            msg = f"ADB command failed with code {e.returncode}"
            if e.stdout:
                msg += f" stdout: {e.stdout.strip()}"
            if e.stderr:
                msg += f" stderr: {e.stderr.strip()}"
            print(f"Phone Link ADB error: {msg}")

        except Exception as e:
            print(f"Phone Link ADB exception: {e}")

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
