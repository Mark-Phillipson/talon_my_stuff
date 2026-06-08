win.title: VoiceLauncherBlazor
and app: vscode

-

watch project:
    user.vscode("workbench.action.terminal.focus")
    sleep(100ms)
    insert("cd C:\\Users\\MPhil\\source\\repos\\VoiceLauncherBlazor\\VoiceAdmin")
    sleep(300ms)
    key(enter)
    sleep(300ms)
    insert("dotnet watch --project VoiceAdmin.csproj --configuration Debug --urls https://localhost:5008")
    sleep(300ms)
    key(enter)
build hybrid [release]:
    user.vscode("workbench.action.terminal.focus")
    sleep(100ms)
    insert("cd C:\\Users\\MPhil\\source\\repos\\VoiceLauncherBlazor\\WinFormsApp")
    sleep(300ms)
    key(enter)
    sleep(300ms)
    insert("dotnet build --project WinFormApp.csproj --configuration Release")
    sleep(300ms)
    key(enter)
