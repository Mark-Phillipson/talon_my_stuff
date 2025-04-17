app: mstsc.exe
-

task manager:               key(ctrl-alt-end)
connection bar:             key(ctrl-alt-home)
window mode:
    key(ctrl-alt-home)
    key(tab)
    repeat(2)
minimize remote window:
    key(ctrl-alt-home)
    key(tab)
    repeat(1)
connect:                    key(alt-n)
disconnect:
    key(ctrl-alt-home)
    key(tab)
    repeat(3)
#this is not working when in window mode
system menu:
    key(ctrl-alt-home)
pull changes:
    key(ctrl-k)
    sleep(200ms)
    key(ctrl-g)
dotnet publish clear visibility:
    insert("cd C:\\Users\\Mark\\source\\repos\\ARM_MIG\\ARM_MVC")
    sleep(100ms)
    key(enter)
    insert("dotnet publish -c Release ")
    sleep(100ms)
    key(enter)
list directory:
    insert("dir")
    sleep(100ms)
    key(enter)
previous directory:
    insert("cd ..")
    sleep(100ms)
    key(enter)
current directory:
    insert("cd ")
