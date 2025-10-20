from talon import Module, ui

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
    def run_application_voice_admin_windows_forms(searchTerm:  str ):
        "runs the voice admin windows forms application with the given search term"
        commandline = r"C:\\Users\\MPhil\\source\\repos\\VoiceLauncherBlazor\\WinFormsApp\\bin\\Release\\net9.0-windows\\WinFormsApp.exe"
        args1 = ' ' + '"' + r'/SearchIntelliSense"' + ' '
        args2 = '' + r'/' + searchTerm + ''
        arguments=[args1, args2]
        print(commandline)
        print(searchTerm)
        ui.launch(path=commandline,args=arguments)
    def run_application_voice_admin_windows_forms_language_category(language:  str,category:  str ):
        "runs the voice admin windows forms application with the given language and category"
        commandline = r"C:\\Users\\MPhil\\source\\repos\\VoiceLauncherBlazor\\WinFormsApp\\bin\\Release\\net9.0-windows\\WinFormsApp.exe"
        args1 = ' ' + '"' + r'/SearchIntelliSense"' + ' '
        args2 = '' + r'/' + language + ''
        args3 = '' + r'/' + category + ''
        arguments=[args1, args2, args3]
        print(commandline)
        print(language)
        print(category)
        ui.launch(path=commandline,args=arguments)
    def run_application_voice_admin_windows_forms_launcher(category:  str ):
        "runs the voice admin windows forms application with the given launcher category"
        commandline = r"C:\\Users\\MPhil\\source\\repos\\VoiceLauncherBlazor\\WinFormsApp\\bin\\Release\\net9.0-windows\\WinFormsApp.exe"
        args1 = ' ' + '"' + r'/Launcher"' + ' '
        args2 = '' + r'/' + category + ''
        arguments=[args1, args2]
        print(commandline)
        print(category)
        ui.launch(path=commandline,args=arguments)
    def run_application_voice_admin_windows_forms_launcher_with_parameter(category:  str, parameter: str ):
        "runs the voice admin windows forms application with the given launcher category and an additional parameter"
        commandline = r"C:\\Users\\MPhil\\source\\repos\\VoiceLauncherBlazor\\WinFormsApp\\bin\\Release\\net9.0-windows\\WinFormsApp.exe"
        args1 = ' ' + '"' + r'/Launcher"' + ' '
        args2 = '' + r'/' + category + ''
        args3 = '' + r'/' + parameter + ''
        arguments=[args1, args2, args3]
        print(commandline)
        print(category)
        print(parameter)
        ui.launch(path=commandline,args=arguments)
    def open_application_custom(commandline:  str ,args:  str) -> str:
        "Opens an application with the given command line"
        print(commandline)
        print(args)
        ui.launch(path=commandline, args=args)
        return " " + commandline + " " + args