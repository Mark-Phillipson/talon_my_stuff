from talon import Module, actions
import json
import threading
import urllib.error
import urllib.request

mod = Module()

BOB_TALON_API_URL = "http://localhost:5111/api/talon/command"


def _send_bob_command_async(prompt: str):
    try:
        payload = json.dumps({
            "command": prompt,
            "deviceToken": "",
            "deviceName": "Talon",
        }).encode("utf-8")

        request = urllib.request.Request(
            BOB_TALON_API_URL,
            data=payload,
            headers={"Content-Type": "application/json"},
            method="POST",
        )

        with urllib.request.urlopen(request, timeout=135) as response:
            result = json.loads(response.read().decode("utf-8"))

        if result.get("success"):
            output = (result.get("textResponse") or "").strip() or "Done."
            actions.app.notify("Bob", output)
        else:
            actions.app.notify(
                "Bob Error",
                result.get("textResponse") or "The assistant request failed.",
            )

    except urllib.error.HTTPError as ex:
        try:
            detail = ex.read().decode("utf-8", errors="replace")
        except Exception:
            detail = str(ex)
        actions.app.notify("Bob API Error", detail or str(ex))
    except urllib.error.URLError as ex:
        actions.app.notify(
            "Bob API Unavailable",
            "Make sure Bob is running in Telegram mode. " + str(ex.reason),
        )
    except Exception as ex:
        actions.app.notify("Bob Error", str(ex))


@mod.action_class
class Actions:
    def bob_cli_send(command: str):
        """Send free-form dictation to the running Bob conversation."""
        prompt = (command or "").strip()
        if not prompt:
            actions.app.notify("Bob", "No command text captured.")
            return

        threading.Thread(
            target=_send_bob_command_async,
            args=(prompt,),
            daemon=True,
        ).start()