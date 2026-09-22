from talon import Module, ui, actions
import os
import ctypes
import time

try:
    import winsound
except ImportError:
    winsound = None


mod = Module()

@mod.action_class
class Actions:
    def play_toggle_chime(sound_path: str = ""):
        """Play a quick confirmation sound after a successful toggle."""
        if winsound is None:
            return

        try:
            if sound_path and os.path.exists(sound_path):
                winsound.PlaySound(sound_path, winsound.SND_FILENAME | winsound.SND_ASYNC)
                return
        except Exception:
            pass

        try:
            winsound.Beep(900, 120)
        except Exception:
            pass

    def play_music_to_code_by():
        """Launch VLC and play all songs in the music to code by folder in random order"""
        import os
        folder = "E:\\Software\\Music\\musictocodebycollection"
        # List all mp3 and wav files in the folder
        files = [os.path.join(folder, f) for f in os.listdir(folder) if f.lower().endswith((".mp3", ".wav", ".flac", ".aac", ".ogg"))]
        if not files:
            print("No music files found in folder:", folder)
            return
        vlc_args = files + ["--random"]
        ui.launch(path="C:/Program Files/VideoLAN/VLC/vlc.exe", args=vlc_args)
    def run_application_search_intellisense(searchTerm:  str ):
        "Runs an application with the given search term"
        commandline = r'C:\Users\MPhil\source\repos\SpeechRecognitionHelpers\VoiceLauncher\bin\Release\VoiceLauncher.exe'
        args1 = ' ' + '"' + r'/SearchIntelliSense"' + ' ' 
        args2 = '' + r'/' + searchTerm + ''
        arguments=[args1, args2]
        print(commandline)
        print(searchTerm)
        ui.launch(path=commandline,args=arguments)
    def run_application_csharp_database_command(searchTerm:  str ):
        "runs the case sharp database command with the given search term"
        commandline = r'C:\Users\MPhil\source\repos\SpeechRecognitionHelpers\ExecuteCommands_NET\bin\Release\net10.0-windows\ExecuteCommands.exe'
        args1 = ' ' + r'/sharp' + ' ' 
        args2 = '' + r'/' + searchTerm + ''
        arguments=["sharp",args1, args2]
        print(commandline)
        print(searchTerm)
        ui.launch(path=commandline,args=arguments)
    def run_application_csharp_natural(naturalCommand:  str ):
        "runs the natural command with the given text"
        import os
        commandline = r'C:\Users\MPhil\source\repos\NaturalCommands\bin\Release\net10.0-windows\NaturalCommands.exe'
        args1 = ' ' + r'/natural' + ' '
        args2 = '' + r'/' + naturalCommand + ''
        arguments = [args1, args2]
        cwd = os.path.dirname(commandline)
        print(commandline)
        print(naturalCommand)
        ui.launch(path=commandline, args=arguments, cwd=cwd)
    def run_application_voice_admin_windows_forms(searchTerm:  str ):
        "runs the voice admin windows forms application with the given search term"
        commandline = r"C:\\Users\\MPhil\\source\\repos\\VoiceLauncherBlazor\\WinFormsApp\\bin\\Release\\net10.0-windows\\WinFormsApp.exe"
        term = (searchTerm or "").strip()
        # Fallback: if user said "launch X" or "open X" treat it as a Launcher category invocation
        if term:
            lower = term.lower()
            if lower.startswith("launch "):
                category = term[len("launch "):].strip()
                args = ["Launcher", category or ""]
            elif lower.startswith("open "):
                category = term[len("open "):].strip()
                args = ["Launcher", category or ""]
            else:
                # Default to Display search when not matching launcher patterns
                args = ["search", term]
        else:
            args = ["Talon", ""]

        cwd = os.path.dirname(commandline)
        print(f"Launching WinFormsApp: {commandline} args={args} cwd={cwd}")
        ui.launch(path=commandline, args=args, cwd=cwd)
    def run_application_voice_admin_windows_forms_language_category(language:  str,category:  str ):
        "runs the voice admin windows forms application with the given language and category"
        commandline = r"C:\\Users\\MPhil\\source\\repos\\VoiceLauncherBlazor\\WinFormsApp\\bin\\Release\\net10.0-windows\\WinFormsApp.exe"
        args = ["SearchIntelliSense", language or "", category or ""]
        cwd = os.path.dirname(commandline)
        print(f"Launching WinFormsApp: {commandline} args={args} cwd={cwd}")
        ui.launch(path=commandline, args=args, cwd=cwd)
    def run_application_voice_admin_windows_forms_launcher(category:  str ):
        "runs the voice admin windows forms application with the given launcher category"
        commandline = r"C:\\Users\\MPhil\\source\\repos\\VoiceLauncherBlazor\\WinFormsApp\\bin\\Release\\net10.0-windows\\WinFormsApp.exe"
        args = ["Launcher", category or ""]
        cwd = os.path.dirname(commandline)
        print(f"Launching WinFormsApp: {commandline} args={args} cwd={cwd}")
        ui.launch(path=commandline, args=args, cwd=cwd)
    def run_application_voice_admin_windows_forms_launcher_with_parameter(category:  str, parameter: str ):
        "runs the voice admin windows forms application with the given launcher category and an additional parameter"
        commandline = r"C:\\Users\\MPhil\\source\\repos\\VoiceLauncherBlazor\\WinFormsApp\\bin\\Release\\net10.0-windows\\WinFormsApp.exe"
        args = ["Launcher", category or "", parameter or ""]
        cwd = os.path.dirname(commandline)
        print(f"Launching WinFormsApp: {commandline} args={args} cwd={cwd}")
        ui.launch(path=commandline, args=args, cwd=cwd)
    def run_application_clippy():
        "runs the VoiceAdmin Clippy command (opens clipboard history)"
        commandline = r"C:\\Users\\MPhil\\source\\repos\\VoiceLauncherBlazor\\WinFormsApp\\bin\\Release\\net10.0-windows\\WinFormsApp.exe"
        args = ["Clipboard"]
        cwd = os.path.dirname(commandline)
        print(f"Launching Clippy: {commandline} args={args} cwd={cwd}")
        ui.launch(path=commandline, args=args, cwd=cwd)
    def run_application_ai_chat():
        "runs the VoiceAdmin AI Chat command (opens AI Chat view)"
        commandline = r"C:\\Users\\MPhil\\source\\repos\\VoiceLauncherBlazor\\WinFormsApp\\bin\\Release\\net10.0-windows\\WinFormsApp.exe"
        args = ["AIChat"]
        cwd = os.path.dirname(commandline)
        print(f"Launching AIChat: {commandline} args={args} cwd={cwd}")
        ui.launch(path=commandline, args=args, cwd=cwd)
    def open_application_custom(commandline:  str ,args:  str) -> str:
        "Opens an application with the given command line"
        print(commandline)
        print(args)
        ui.launch(path=commandline, args=args)
        return " " + commandline + " " + args
    def break_in_code():
        "breaks the code execution in the debugger"
        print("Breaking in code execution")

        user32 = ctypes.windll.user32

        VK_CONTROL = 0x11
        VK_PAUSE = 0x13
        VK_CANCEL = 0x03  # Break key virtual key value used by many debuggers
        KEYEVENTF_KEYUP = 0x0002

        def send_ctrl_plus(vk_code: int):
            user32.keybd_event(VK_CONTROL, 0, 0, 0)
            time.sleep(0.02)
            user32.keybd_event(vk_code, 0, 0, 0)
            user32.keybd_event(vk_code, 0, KEYEVENTF_KEYUP, 0)
            time.sleep(0.02)
            user32.keybd_event(VK_CONTROL, 0, KEYEVENTF_KEYUP, 0)

        # Try Ctrl+Break first (VK_CANCEL), then Ctrl+Pause for apps that bind Pause directly.
        send_ctrl_plus(VK_CANCEL)
        time.sleep(0.05)
        send_ctrl_plus(VK_PAUSE)

        # Final fallback through Talon's key dispatcher.
        try:
            actions.key("ctrl-pause")
        except Exception:
            pass
        