os: windows
and app.name: Windows PowerShell
os: windows
app: windows_terminal
and win.title: /PowerShell/
os: windows
and app.exe: powershell.exe
-
list directories:
    insert("Get-ChildItem -Directory")
    sleep(100ms)
    key(enter)
kill dotnet:
    insert("Get-Process dotnet | Stop-Process -Force")
list files:
    insert("Get-ChildItem")
    sleep(100ms)
    key(enter)
list all files:
    insert("Get-ChildItem -Force")
    sleep(100ms)
    key(enter)
show processes:
    insert("Get-Process")
    sleep(100ms)
    key(enter)
stop process:
    insert("Stop-Process -Name ")
get system info:
    insert("Get-ComputerInfo")
    sleep(100ms)
    key(enter)
disk usage:
    insert("Get-PSDrive")
    sleep(100ms)
    key(enter)
network info:
    insert("Get-NetIPAddress")
    sleep(100ms)
    key(enter)
edit file:
    insert("notepad ")
search text:
    insert("Select-String -Path * -Pattern ")
talon log:
    insert("Get-Content C:\\Users\\MPhil\\AppData\\Roaming\\talon\\talon.log -Wait")
talon log clear:
    insert("Clear-Content C:\\Users\\MPhil\\AppData\\Roaming\\talon\\talon.log")
