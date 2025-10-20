# Talon Cheatsheet — Windows Terminal

| Spoken Command | Description | Source |
|----------------|-------------|--------|
| (build project) | insert("dotnet build") ⏎     sleep(100ms) ⏎     key(enter) | terminal |
| (dotnet build) | insert("dotnet build") ⏎     sleep(100ms) ⏎     key(enter) | terminal |
| app | windowsterminal.exe | terminal |
| app | devenv.exe | terminal |
| app | vscode | terminal |
| app | c:\windows\system32\cmd.exe | terminal |
| app | WindowsTerminal.exe | windows_terminal |
| app | windows_terminal | windows_terminal_unix |
| chat with database | insert("CD C:\\Users\\MPhil\\source\\repos\\dbchatpro\\DBchatpro") ⏎     sleep(100ms) ⏎     key(e... | terminal |
| clear screen | insert("cls") ⏎     sleep(100ms) ⏎     key(enter) | terminal |
| copy that | key(ctrl-c) | windows_terminal |
| create issue [<user.text>] | insert("gh issue create ") ⏎     insert(user.text) | windows_terminal |
| create rails controller | insert("rails generate controller name action ") | windows_terminal |
| cross | key(ctrl-alt-left) | terminal |
| current [directory] | insert("cd ") | terminal |
| delete object and binary folders | insert("Remove-Item -Path bin,obj -Recurse -Force") | terminal |
| dotnet add package | insert("dotnet add package ") | terminal |
| dotnet build release | insert("dotnet build -c Release") ⏎     sleep(100ms) ⏎     key(enter) | terminal |
| dotnet clean | insert("dotnet clean") ⏎     sleep(100ms) ⏎     key(enter) | terminal |
| dotnet ef create script | insert("dotnet ef migrations script --output migrations.sql --idempotent --context") | terminal |
| dotnet ef migrations add | insert("dotnet ef migrations add ") | terminal |
| dotnet ef migrations remove | insert("dotnet ef migrations remove") ⏎     sleep(100ms) ⏎     key(enter) | terminal |
| dotnet publish voice admin | insert("taskkill /F /IM VoiceLauncher.exe") ⏎     sleep(100ms) ⏎     key(enter) ⏎     sleep(100ms... | terminal |
| dotnet restore | insert("dotnet restore") ⏎     sleep(100ms) ⏎     key(enter) | windows_terminal |
| dotnet run | insert("dotnet run") ⏎     sleep(100ms) ⏎     key(enter) | terminal |
| dotnet test | insert("dotnet test") ⏎     sleep(100ms) ⏎     key(enter) | terminal |
| dotnet watch | insert("dotnet watch") ⏎     sleep(100ms) ⏎     key(enter) | terminal |
| export text | key(ctrl-shift-p) ⏎     sleep(100ms) ⏎     insert("export ") ⏎     sleep(50ms) ⏎     key(enter) | windows_terminal |
| focus down | key(alt-down) | terminal |
| focus left | key(alt-left) | terminal |
| focus right | key(alt-right) | terminal |
| focus up | key(alt-up) | terminal |
| git clone | insert("git clone ") | terminal |
| git pull | insert("git pull") | terminal |
| go [command] palette | key(ctrl-shift-p) | windows_terminal |
| hunt [terminal] | key(ctrl-shift-f) | terminal |
| hunt this | key(ctrl-shift-f) | windows_terminal |
| include paging | insert(" \| more") | terminal |
| Linux update | insert("sudo apt-get update") | terminal |
| list all [directory] | insert("ls -a") ⏎     sleep(100ms) ⏎     key(enter) | terminal |
| list directory | insert("ls") ⏎     sleep(100ms) ⏎     key(enter) | terminal |
| list last commits | insert("git log origin/master --oneline -n 10") ⏎     sleep(100ms) ⏎     key(enter) | terminal |
| make directory | insert("mkdir ") | terminal |
| move focus | key(ctrl-shift-') | windows_terminal |
| move focus <number_small> | key(ctrl-shift-') ⏎     repeat(number_small-1) | windows_terminal |
| move focus down | key(ctrl-shift-down) | windows_terminal |
| move focus left | key(ctrl-shift-left) | windows_terminal |
| move focus right | key(ctrl-shift-right) | windows_terminal |
| move focus up | key(ctrl-shift-up) | windows_terminal |
| move pane | key(ctrl-shift-') | windows_terminal |
| move pane <number_small> | key(ctrl-shift-') ⏎     repeat(number_small-1) | windows_terminal |
| move pane left | key(ctrl-shift-left) | windows_terminal |
| move pane right | key(ctrl-shift-right) | windows_terminal |
| move pane up | key(ctrl-shift-up) | windows_terminal |
| os | windows | windows_terminal_unix |
| pane split | key(ctrl-shift-d) | windows_terminal |
| playwright debug | insert("$env:PWDEBUG=\"1\"") | terminal |
| playwright generate code | key(super-r) ⏎     sleep(300ms) ⏎     insert("cmd") ⏎     key(enter) ⏎     sleep(900ms) ⏎     ins... | terminal |
| playwright headed | insert("$env:HEADED=\"1\"") | terminal |
| playwright headless | insert("$env:HEADED=\"0\"") | terminal |
| playwright webkit | insert("$env:BROWSER=\"webkit\"") | terminal |
| previous [directory] | insert("cd ..") ⏎     sleep(100ms) ⏎     key(enter) | terminal |
| repel | insert("C:\\Users\\MPhil\\AppData\\Roaming\\talon\\venv\\3.13\\Scripts\\repl.bat") ⏎     sleep(10... | terminal |
| resize left | key(alt-shift-left) | terminal |
| resize pane | key(ctrl-shift-') | windows_terminal |
| resize up | key(alt-shift-up) | terminal |
| resizes down | key(alt-shift-down) | terminal |
| restart | key(ctrl-r) | terminal |
| run code | insert("code .") ⏎     sleep(100ms) ⏎     key(enter) | terminal |
| run insiders | insert("code-insiders .") ⏎     sleep(100ms) ⏎     key(enter) | terminal |
| select all | key(ctrl-shift-a) | windows_terminal |
| settings | key(ctrl-,) | terminal |
| shutdown | key(ctrl-c) | terminal |
| split cross | key(alt-shift-d) | terminal |
| split down | key(alt-shift--) | terminal |
| split pain | key(shift-alt-d) | terminal |
| split right | key(alt-shift-+) | terminal |
| start rails server | insert("rails server") ⏎     sleep(100ms) ⏎     key(enter) | windows_terminal |
| tab close | key(ctrl-shift-w) | windows_terminal |
| tab new | key(ctrl-shift-t) | windows_terminal |
| tag() | terminal | terminal |
| tag() | user.tabs | terminal |
| tag() | terminal | windows_terminal |
| tag() | user.tabs | windows_terminal |
| test method | edit.select_word() ⏎     methodName = edit.selected_text() ⏎     key(super-r) ⏎     sleep(300ms) ... | terminal |
| test method headless | edit.select_word() ⏎     methodName = edit.selected_text() ⏎     key(super-r) ⏎     sleep(300ms) ... | terminal |
| title | /^mark_unix/ | windows_terminal_unix |
| watch cycle | insert("dotnet watch run --project CycleRoutes/CycleRoutes.Web") | terminal |
