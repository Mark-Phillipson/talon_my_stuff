# Talon Cheatsheet — Windows Terminal

Command | Action | Source
--- | --- | ---
(build project) | insert("dotnet build") ⏎     sleep(100ms) ⏎     key(enter) | apps/terminal.talon
(dotnet build) | insert("dotnet build") ⏎     sleep(100ms) ⏎     key(enter) | apps/terminal.talon
app | windowsterminal.exe | apps/terminal.talon
app | devenv.exe | apps/terminal.talon
app | vscode | apps/terminal.talon
app | c:\windows\system32\cmd.exe | apps/terminal.talon
app | WindowsTerminal.exe | apps/windows_terminal.talon
app | windows_terminal | apps/windows_terminal_unix.talon
chat with database | insert("CD C:\\Users\\MPhil\\source\\repos\\dbchatpro\\DBchatpro") ⏎     sleep(100ms) ⏎     key(enter) ⏎     sleep(100ms) ⏎     insert("dotnet run -c Release") ⏎     sleep(100ms) ⏎     key(enter) | apps/terminal.talon
clear screen | insert("cls") ⏎     sleep(100ms) ⏎     key(enter) | apps/terminal.talon
copy that | key(ctrl-c) | apps/windows_terminal.talon
create issue [<user.text>] | insert("gh issue create ") ⏎     insert(user.text) | apps/windows_terminal.talon
create rails controller | insert("rails generate controller name action ") | apps/windows_terminal.talon
cross | key(ctrl-alt-left) | apps/terminal.talon
current [directory] | insert("cd ") | apps/terminal.talon
delete object and binary folders | insert("Remove-Item -Path bin,obj -Recurse -Force") | apps/terminal.talon
dotnet add package | insert("dotnet add package ") | apps/terminal.talon
dotnet build release | insert("dotnet build -c Release") ⏎     sleep(100ms) ⏎     key(enter) | apps/terminal.talon
dotnet clean | insert("dotnet clean") ⏎     sleep(100ms) ⏎     key(enter) | apps/terminal.talon
dotnet ef create script | insert("dotnet ef migrations script --output migrations.sql --idempotent --context") | apps/terminal.talon
dotnet ef migrations add | insert("dotnet ef migrations add ") | apps/terminal.talon
dotnet ef migrations remove | insert("dotnet ef migrations remove") ⏎     sleep(100ms) ⏎     key(enter) | apps/terminal.talon
dotnet publish voice admin | insert("taskkill /F /IM VoiceLauncher.exe") ⏎     sleep(100ms) ⏎     key(enter) ⏎     sleep(100ms) ⏎     insert("CD C:\\Users\\MPhil\\source\\repos\\VoiceLauncherBlazor\\VoiceLauncher") ⏎     sleep(100ms) ⏎     key(enter) ⏎     sleep(100ms) ⏎     insert("dotnet publish -c Release ") ⏎     sleep(100ms) ⏎     key(enter) ⏎     key(enter) | apps/terminal.talon
dotnet restore | insert("dotnet restore") ⏎     sleep(100ms) ⏎     key(enter) | apps/windows_terminal.talon
dotnet run | insert("dotnet run") ⏎     sleep(100ms) ⏎     key(enter) | apps/terminal.talon
dotnet test | insert("dotnet test") ⏎     sleep(100ms) ⏎     key(enter) | apps/terminal.talon
dotnet watch | insert("dotnet watch") ⏎     sleep(100ms) ⏎     key(enter) | apps/terminal.talon
export text | key(ctrl-shift-p) ⏎     sleep(100ms) ⏎     insert("export ") ⏎     sleep(50ms) ⏎     key(enter) | apps/windows_terminal.talon
focus down | key(alt-down) | apps/terminal.talon
focus left | key(alt-left) | apps/terminal.talon
focus right | key(alt-right) | apps/terminal.talon
focus up | key(alt-up) | apps/terminal.talon
git clone | insert("git clone ") | apps/terminal.talon
git pull | insert("git pull") | apps/terminal.talon
go [command] palette | key(ctrl-shift-p) | apps/windows_terminal.talon
hunt [terminal] | key(ctrl-shift-f) | apps/terminal.talon
hunt this | key(ctrl-shift-f) | apps/windows_terminal.talon
include paging | insert(" \| more") | apps/terminal.talon
Linux update | insert("sudo apt-get update") | apps/terminal.talon
list all [directory] | insert("ls -a") ⏎     sleep(100ms) ⏎     key(enter) | apps/terminal.talon
list directory | insert("ls") ⏎     sleep(100ms) ⏎     key(enter) | apps/terminal.talon
list last commits | insert("git log origin/master --oneline -n 10") ⏎     sleep(100ms) ⏎     key(enter) | apps/terminal.talon
make directory | insert("mkdir ") | apps/terminal.talon
move focus | key(ctrl-shift-') | apps/windows_terminal.talon
move focus <number_small> | key(ctrl-shift-') ⏎     repeat(number_small-1) | apps/windows_terminal.talon
move focus down | key(ctrl-shift-down) | apps/windows_terminal.talon
move focus left | key(ctrl-shift-left) | apps/windows_terminal.talon
move focus right | key(ctrl-shift-right) | apps/windows_terminal.talon
move focus up | key(ctrl-shift-up) | apps/windows_terminal.talon
move pane | key(ctrl-shift-') | apps/windows_terminal.talon
move pane <number_small> | key(ctrl-shift-') ⏎     repeat(number_small-1) | apps/windows_terminal.talon
move pane left | key(ctrl-shift-left) | apps/windows_terminal.talon
move pane right | key(ctrl-shift-right) | apps/windows_terminal.talon
move pane up | key(ctrl-shift-up) | apps/windows_terminal.talon
os | windows | apps/windows_terminal_unix.talon
pane split | key(ctrl-shift-d) | apps/windows_terminal.talon
playwright debug | insert("$env:PWDEBUG=\"1\"") | apps/terminal.talon
playwright generate code | key(super-r) ⏎     sleep(300ms) ⏎     insert("cmd") ⏎     key(enter) ⏎     sleep(900ms) ⏎     insert("CD C:\\Users\\MPhil\\source\\repos\\DevelopmentTemplate_24\\PlaywrightTests") ⏎     key(enter) ⏎     sleep(600ms) ⏎     insert("pwsh bin/Debug/net8.0/playwright.ps1 codegen --viewport-size=1680,1050 http://localhost:5016/") ⏎     sleep(300ms) ⏎     key(enter) | apps/terminal.talon
playwright headed | insert("$env:HEADED=\"1\"") | apps/terminal.talon
playwright headless | insert("$env:HEADED=\"0\"") | apps/terminal.talon
playwright webkit | insert("$env:BROWSER=\"webkit\"") | apps/terminal.talon
previous [directory] | insert("cd ..") ⏎     sleep(100ms) ⏎     key(enter) | apps/terminal.talon
repel | insert("C:\\Users\\MPhil\\AppData\\Roaming\\talon\\venv\\3.13\\Scripts\\repl.bat") ⏎     sleep(100ms) ⏎     key(enter) ⏎     sleep(100ms) ⏎     insert("events.tail()") | apps/terminal.talon
resize left | key(alt-shift-left) | apps/terminal.talon
resize pane | key(ctrl-shift-') | apps/windows_terminal.talon
resize up | key(alt-shift-up) | apps/terminal.talon
resizes down | key(alt-shift-down) | apps/terminal.talon
restart | key(ctrl-r) | apps/terminal.talon
run code | insert("code .") ⏎     sleep(100ms) ⏎     key(enter) | apps/terminal.talon
run insiders | insert("code-insiders .") ⏎     sleep(100ms) ⏎     key(enter) | apps/terminal.talon
select all | key(ctrl-shift-a) | apps/windows_terminal.talon
settings | key(ctrl-,) | apps/terminal.talon
shutdown | key(ctrl-c) | apps/terminal.talon
split cross | key(alt-shift-d) | apps/terminal.talon
split down | key(alt-shift--) | apps/terminal.talon
split pain | key(shift-alt-d) | apps/terminal.talon
split right | key(alt-shift-+) | apps/terminal.talon
start rails server | insert("rails server") ⏎     sleep(100ms) ⏎     key(enter) | apps/windows_terminal.talon
tab close | key(ctrl-shift-w) | apps/windows_terminal.talon
tab new | key(ctrl-shift-t) | apps/windows_terminal.talon
tag() | terminal | apps/terminal.talon
tag() | user.tabs | apps/terminal.talon
tag() | terminal | apps/windows_terminal.talon
tag() | user.tabs | apps/windows_terminal.talon
test method | edit.select_word() ⏎     methodName = edit.selected_text() ⏎     key(super-r) ⏎     sleep(300ms) ⏎     insert("cmd") ⏎     key(enter) ⏎     sleep(900ms) ⏎     insert("CD C:\\Users\\MPhil\\source\\repos\\DevelopmentTemplate_24\\PlaywrightTests") ⏎     key(enter) ⏎     sleep(600ms) ⏎     insert("dotnet test --filter Name~{methodName} -- Playwright.LaunchOptions.Headless=false") ⏎     sleep(300ms) ⏎     key(enter) | apps/terminal.talon
test method headless | edit.select_word() ⏎     methodName = edit.selected_text() ⏎     key(super-r) ⏎     sleep(300ms) ⏎     insert("cmd") ⏎     key(enter) ⏎     sleep(900ms) ⏎     insert("CD C:\\Users\\MPhil\\source\\repos\\DevelopmentTemplate_24\\PlaywrightTests") ⏎     key(enter) ⏎     sleep(600ms) ⏎     insert("dotnet test --filter Name~{methodName} -- Playwright.LaunchOptions.Headless=true") ⏎     sleep(300ms) ⏎     key(enter) | apps/terminal.talon
title | /^mark_unix/ | apps/windows_terminal_unix.talon
watch cycle | insert("dotnet watch run --project CycleRoutes/CycleRoutes.Web") | apps/terminal.talon
