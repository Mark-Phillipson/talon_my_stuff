from talon import Module, actions

mod = Module()

@mod.action_class
class Actions:
    def toggle_taskbar():
        """Toggle the taskbar auto-hide setting"""
        print("Toggling taskbar auto-hide setting")
        actions.user.run_powershell_script(r"C:\Users\MPhil\AppData\Roaming\talon\user\mystuff\talon_my_stuff\core\talon_helpers\toggle_taskbar.ps1")

    def run_powershell_script(script_path: str):
        """Run a PowerShell script"""
        actions.key("super-r")
        actions.sleep("200ms")
        actions.insert(f"powershell.exe -File {script_path}")
        actions.key("enter")