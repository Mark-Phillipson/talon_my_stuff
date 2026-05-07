from talon import Module, ui
import os

mod = Module()

@mod.action_class
class Actions:
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
        commandline = r'C:\Users\MPhil\source\repos\SpeechRecognitionHelpers\ExecuteCommands_NET\bin\Release\net9.0-windows\ExecuteCommands.exe'
        args1 = ' ' + r'/sharp' + ' ' 
        args2 = '' + r'/' + searchTerm + ''
        arguments=[args1, args2]
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
                # Default to Talon search when not matching launcher patterns
                args = ["Talon", term]
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
    def open_application_custom(commandline:  str ,args:  str) -> str:
        "Opens an application with the given command line"
        print(commandline)
        print(args)
        ui.launch(path=commandline, args=args)
        return " " + commandline + " " + args