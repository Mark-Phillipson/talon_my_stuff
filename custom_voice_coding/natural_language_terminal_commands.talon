win.title: NaturalCommands
and app: vscode

-

build release:
    insert("dotnet build NaturalCommands.csproj  -c Release")
    sleep(300ms)
    key(enter)
