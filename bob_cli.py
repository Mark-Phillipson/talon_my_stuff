from talon import Module, actions
import subprocess

mod = Module()

# Use the verify DLL path so this works even when apphost is locked.
ASSISTANT_COMMAND = [
    "dotnet",
    r"C:\Users\MPhil\source\repos\personal-assistant\bin\Debug\net10.0-verify\personal-assistant.dll",
]


@mod.action_class
class Actions:
    def bob_cli_send(command: str):
        """Send free-form dictation to personal-assistant CLI mode."""
        prompt = (command or "").strip()
        if not prompt:
            actions.app.notify("Bob CLI", "No command text captured.")
            return

        try:
            result = subprocess.run(
                ASSISTANT_COMMAND + ["--cli", prompt],
                capture_output=True,
                text=True,
                encoding="utf-8",
                timeout=120,
            )
        except FileNotFoundError:
            actions.app.notify("Bob CLI", "dotnet command not found.")
            return
        except subprocess.TimeoutExpired:
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
