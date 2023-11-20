app: WindowsTerminal.exe
app: devenv.exe
app: vscode
-
dotnet watch: 
    insert("dotnet watch")
    sleep(100ms)
    key(enter)
clear screen: 
    insert("cls")
    sleep(100ms)
    key(enter)
dotnet add package:    
    insert("dotnet add package ")
close tab:
    key(ctrl-alt-w)
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
