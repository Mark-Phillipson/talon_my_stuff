from talon import Module, ui

mod = Module()

@mod.action_class
class Actions:
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
        commandline = r'C:\Users\MPhil\source\repos\SpeechRecognitionHelpers\ExecuteCommands_NET\bin\Release\net8.0-windows\ExecuteCommands.exe'
        args1 = ' ' + r'/sharp' + ' ' 
        args2 = '' + r'/' + searchTerm + ''
        arguments=[args1, args2]
        print(commandline)
        print(searchTerm)
        ui.launch(path=commandline,args=arguments)
    def run_application_voice_admin_maiu(searchTerm:  str ):
        "runs the voice admin maui application with the given search term"
        commandline = r'C:\\Users\\MPhil\\source\\repos\\VoiceLauncherBlazor\\VoiceAdminMAUI\\bin\\Release\\net8.0-windows10.0.19041.0\\win10-x64\\VoiceAdminMAUI.exe'
        args1 = ' ' + '"' + r'/SearchIntelliSense"' + ' '
        args2 = '' + r'/' + searchTerm + ''
        arguments=[args1, args2]
        print(commandline)
        print(searchTerm)
        ui.launch(path=commandline,args=arguments)
    def run_application_voice_admin_windows_forms(searchTerm:  str ):
        "runs the voice admin windows forms application with the given search term"
        commandline = r"C:\\Users\\MPhil\\source\\repos\\VoiceLauncherBlazor\\WinFormsApp\\bin\\Release\\net8.0-windows\\WinFormsApp.exe"
        args1 = ' ' + '"' + r'/SearchIntelliSense"' + ' '
        args2 = '' + r'/' + searchTerm + ''
        arguments=[args1, args2]
        print(commandline)
        print(searchTerm)
        ui.launch(path=commandline,args=arguments)
    def run_application_voice_admin_windows_forms(language:  str,category:  str ):
        "runs the voice admin windows forms application with the given language and category"
        commandline = r"C:\\Users\\MPhil\\source\\repos\\VoiceLauncherBlazor\\WinFormsApp\\bin\\Release\\net8.0-windows\\WinFormsApp.exe"
        args1 = ' ' + '"' + r'/SearchIntelliSense"' + ' '
        args2 = '' + r'/' + language + ''
        args3 = '' + r'/' + category + ''
        arguments=[args1, args2, args3]
        print(commandline)
        print(language)
        print(category)
        ui.launch(path=commandline,args=arguments)
    def open_application_custom(commandline:  str ,args:  str) -> str:
        "Opens an application with the given command line"
        print(commandline)
        print(args)
        ui.launch(path=commandline, args=args)
        return " " + commandline + " " + args