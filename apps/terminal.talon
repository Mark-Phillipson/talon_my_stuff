app: WindowsTerminal.exe
app: devenv.exe
app: vscode
-
tag(): terminal
tag(): user.tabs
tag(): user.find

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
settings: key(ctrl-,)    
shutdown: key(ctrl-c)
split pain: key(shift-alt-d)
dotnet build: 
    insert("dotnet build")
    sleep(100ms)
    key(enter)
list directory:    
    insert("dir")
    sleep(100ms)
    key(enter)
current directory: insert("cd ")    
dotnet clean:
    insert("dotnet clean")
    sleep(100ms)
    key(enter)
test method:
    methodName=clip.text()
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
    methodName=clip.text()
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
hunt this: key(ctrl-shift-f)