app: windowsterminal.exe
app: devenv.exe
app: vscode
app: c:\windows\system32\cmd.exe
-
tag(): terminal
tag(): user.tabs
#tag(): user.find

split cross: key(alt-shift-d)
split right: key(alt-shift-+)
split down: key(alt-shift--)

cross: key(ctrl-alt-left)
focus down: key(alt-down)
focus left: key(alt-left)
focus right: key(alt-right)
focus up: key(alt-up)
resize up: key(alt-shift-up)
resizes down: key(alt-shift-down)
resize left: key(alt-shift-left)

dotnet watch:
    insert("dotnet watch")
    sleep(100ms)
    key(enter)
dotnet run:
    insert("dotnet run")
    sleep(100ms)
    key(enter)
dotnet restore:
    insert("dotnet restore")
    sleep(100ms)
    key(enter)
dotnet add package:
    insert("dotnet add package ")
previous [directory]:
    insert("cd ..")
    sleep(100ms)
    key(enter)
restart:
    key(ctrl-r)
run code:
    insert("code .")
    sleep(100ms)
    key(enter)
run insiders:
    insert("code-insiders .")
    sleep(100ms)
    key(enter)
settings: key(ctrl-,)
shutdown: key(ctrl-c)
split pain: key(shift-alt-d)
(dotnet build) | (build project):
    insert("dotnet build")
    sleep(100ms)
    key(enter)
list directory:
    insert("ls")
    sleep(100ms)
    key(enter)
list all [directory]:
    insert("ls -a")
    sleep(100ms)
    key(enter)
current [directory]: insert("cd ")
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
    insert("CD C:\\Users\\MPhil\\source\\repos\\DevelopmentTemplate_24\\PlaywrightTests")
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
    insert("CD C:\\Users\\MPhil\\source\\repos\\DevelopmentTemplate_24\\PlaywrightTests")
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
    insert("CD C:\\Users\\MPhil\\source\\repos\\DevelopmentTemplate_24\\PlaywrightTests")
    key(enter)
    sleep(600ms)
    insert("pwsh bin/Debug/net8.0/playwright.ps1 codegen --viewport-size=1680,1050 http://localhost:5016/")
    sleep(300ms)
    key(enter)
playwright headless:
    insert("$env:HEADED=\"0\"")
playwright headed:
    insert("$env:HEADED=\"1\"")
playwright webkit:
    insert("$env:BROWSER=\"webkit\"")
playwright debug:
    insert("$env:PWDEBUG=\"1\"")
hunt [terminal]: key(ctrl-shift-f)
dotnet ef create script:
    insert("dotnet ef migrations script --output migrations.sql --idempotent --context")
dotnet ef migrations add:
    insert("dotnet ef migrations add ")
dotnet ef migrations remove:
    insert("dotnet ef migrations remove")
    sleep(100ms)
    key(enter)
dotnet publish voice admin:
    insert("taskkill /F /IM VoiceLauncher.exe")
    sleep(100ms)
    key(enter)
    sleep(100ms)
    insert("CD C:\\Users\\MPhil\\source\\repos\\VoiceLauncherBlazor\\VoiceLauncher")
    sleep(100ms)
    key(enter)
    sleep(100ms)
    insert("dotnet publish -c Release ")
    sleep(100ms)
    key(enter)
    key(enter)
chat with database:
    insert("CD C:\\Users\\MPhil\\source\\repos\\dbchatpro\\DBchatpro")
    sleep(100ms)
    key(enter)
    sleep(100ms)
    insert("dotnet run -c Release")
    sleep(100ms)
    key(enter)
git clone: insert("git clone ")
git pull: insert("git pull")
make directory: insert("mkdir ")
dotnet build release:
    insert("dotnet build -c Release")
    sleep(100ms)
    key(enter)
clear screen:
    insert("cls")
    sleep(100ms)
    key(enter)
Linux update: insert("sudo apt-get update")
include paging: insert(" | more")
repel:
    insert("C:\\Users\\MPhil\\AppData\\Roaming\\talon\\venv\\3.13\\Scripts\\repl.bat")
    sleep(100ms)
    key(enter)
    sleep(100ms)
    insert("events.tail()")
list last commits:
    insert("git log origin/master --oneline -n 10")
    sleep(100ms)
    key(enter)
delete object and binary folders: insert("Remove-Item -Path bin,obj -Recurse -Force")
watch cycle: insert("dotnet watch run --project CycleRoutes/CycleRoutes.Web")
shelling:
    insert("github-copilot-cli what-the-shell \"\"")
    sleep(30ms)
    key(left)
git assist: insert("github-copilot-cli git-assist ")
Github assist: insert("github-copilot-cli gh-assist ")
open terminal settings:
    key(ctrl-,)
    sleep(100ms)
    insert("terminal.integrated.defaultProfile.windows")
    key(enter)
kill dotnet:
    insert("Stop-Process -Name dotnet -Force")
    sleep(100ms)
    key(enter)
