from talon import Module, actions
import os
import subprocess
import threading

mod = Module()

# Use the verify DLL path so this works even when apphost is locked.
ASSISTANT_COMMAND = [
    "dotnet",
    r"C:\Users\MPhil\source\repos\personal-assistant\bin\Debug\net10.0\personal-assistant.dll",
]


def _run_bob_cli_async(prompt: str, env: dict, startupinfo, creationflags: int):
    try:
        result = subprocess.run(
            ASSISTANT_COMMAND + ["--cli", prompt],
            capture_output=True,
            text=True,
            encoding="utf-8",
            timeout=135,
            startupinfo=startupinfo,
            creationflags=creationflags,
            env=env,
        )

    except FileNotFoundError:
        actions.app.notify("Bob CLI", "dotnet command not found.")
        return
    except subprocess.TimeoutExpired as ex:
        actions.app.notify("Bob CLI", "Assistant timed out.")
        return
    except Exception as ex:
        actions.app.notify("Bob CLI", f"Failed to run assistant: {ex}")
        return

    if result.returncode == 0:
        output = (result.stdout or "").strip() or "Done."
        actions.app.notify("Bob", output)
        return

    error_text = (result.stderr or result.stdout or "Unknown error").strip()
    actions.app.notify("Bob CLI Error", error_text)


@mod.action_class
class Actions:
    def bob_cli_send(command: str):
        """Send free-form dictation to personal-assistant CLI mode."""
        prompt = (command or "").strip()
        if not prompt:
            actions.app.notify("Bob CLI", "No command text captured.")
            return

        env = os.environ.copy()
        env["ASSISTANT_TTS_ENABLED"] = "true"  # ensure TTS is enabled for Talon calls
        env["ASSISTANT_TTS_PREFERRED_GENDER"] = env.get("ASSISTANT_TTS_PREFERRED_GENDER", "female")

        startupinfo = None
        creationflags = 0
        if hasattr(subprocess, "STARTUPINFO"):
            startupinfo = subprocess.STARTUPINFO()
            startupinfo.dwFlags |= subprocess.STARTF_USESHOWWINDOW
            startupinfo.wShowWindow = subprocess.SW_HIDE
        if hasattr(subprocess, "CREATE_NO_WINDOW"):
            creationflags = subprocess.CREATE_NO_WINDOW

        thread = threading.Thread(
            target=_run_bob_cli_async,
            args=(prompt, env, startupinfo, creationflags),
            daemon=True,
        )
        thread.start()
        actions.app.notify("Bob CLI", "Command sent to assistant; waiting for response...")

