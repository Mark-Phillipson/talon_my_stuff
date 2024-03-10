app: WindowsTerminal.exe
app: devenv.exe
app: vscode
-
tag(): terminal
tag(): user.tabs
#tag(): user.find

split cross:                key(alt-shift-d)
split right:                key(alt-shift-+)
split down:                 key(alt-shift--)

cross:                      key(ctrl-alt-left)
focus down:                 key(alt-down)
focus left:                 key(alt-left)
focus right:                key(alt-right)
focus up:                   key(alt-up)
resize up:                  key(alt-shift-up)
resizes down:               key(alt-shift-down)
resize left:                key(alt-shift-left)

dotnet watch:
    insert("dotnet watch")
    sleep(100ms)
    key(enter)
dotnet run:
    insert("dotnet run")
    sleep(100ms)
    key(enter)
clear screen:
    insert("cls")
    sleep(100ms)
    key(enter)
dotnet add package:
    insert("dotnet add package ")
command palette:
    key(ctrl-shift-p)
(previous folder) | (previous directory):
    insert("cd ..")
    sleep(100ms)
    key(enter)
restart:
    key(ctrl-r)
run code:
    insert("code .")
    sleep(100ms)
    key(enter)
settings:                   key(ctrl-,)
shutdown:                   key(ctrl-c)
split pain:                 key(shift-alt-d)
(dotnet build) | (build project):
    insert("dotnet build")
    sleep(100ms)
    key(enter)
list directory:
    insert("dir")
    sleep(100ms)
    key(enter)
current directory:          insert("cd ")
dotnet clean:
    insert("dotnet clean")
    sleep(100ms)
    key(enter)
dotnet test:
    insert("dotnet test")
    sleep(100ms)
    key(enter)
test method:
    edit.select_word()
    methodName = edit.selected_text()
    key(super-r)
    sleep(300ms)
    insert("cmd")
    key(enter)
    sleep(900ms)
    insert("CD C:\\Users\\MPhil\\source\\repos\\ARM_MIG\\PlaywrightTests")
    key(enter)
    sleep(600ms)
    insert("dotnet test --filter Name~{methodName} -- Playwright.LaunchOptions.Headless=false")
    sleep(300ms)
    key(enter)
test method headless:
    edit.select_word()
    methodName = edit.selected_text()
    key(super-r)
    sleep(300ms)
    insert("cmd")
    key(enter)
    sleep(900ms)
    insert("CD C:\\Users\\MPhil\\source\\repos\\ARM_MIG\\PlaywrightTests")
    key(enter)
    sleep(600ms)
    insert("dotnet test --filter Name~{methodName} -- Playwright.LaunchOptions.Headless=true")
    sleep(300ms)
    key(enter)
playwright generate code:
    key(super-r)
    sleep(300ms)
    insert("cmd")
    key(enter)
    sleep(900ms)
    insert("CD C:\\Users\\MPhil\\source\\repos\\ARM_MIG\\PlaywrightTests")
    key(enter)
    sleep(600ms)
    insert("pwsh bin/Debug/net8.0/playwright.ps1 codegen --viewport-size=1680,1050 https://localhost:7164/")
    sleep(300ms)
    key(enter)
hunt terminal:              key(ctrl-shift-f)
dotnet ef create script:
    insert("dotnet ef migrations script --output migrations.sql --idempotent --context")
dotnet ef migrations add:
    insert("dotnet ef migrations add ")
dotnet ef migrations remove:
    insert("dotnet ef migrations remove")
    sleep(100ms)
    key(enter)
dotnet publish voice admin:
    insert("dotnet publish -c Release --output C:\\Users\\MPhil\\source\\repos\\VoiceLauncherBlazor\\VoiceLauncher\\bin\\Release\\net8.0\\publish")
    sleep(100ms)
    key(enter)
git clone:                  insert("git clone ")
make directory:             insert("mkdir ")
