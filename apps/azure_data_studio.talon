os: windows
app: azure_data_studio
app: Azure Data Studio

#title: Azure Data Studio
-

expand selection: key(shift-alt-right)
execute query: key(f5)
toggle results:
    key(ctrl-shift-r)
    sleep(100ms)
    key(ctrl-shift-r)
go to definition: key(f12)
close tab: key(ctrl-w)
find following <user.text>:
    key(ctrl-f)
    sleep(100ms)
    insert(text)
    key(enter)
    key(escape)
go to line: key(ctrl-g)
toggle sidebar: key(ctrl-b)
focus server: user.vscode("dataExplorer.servers.focus")
new connection: user.vscode("registeredServers.addConnection")
open connections: user.vscode("registeredServers.addConnection")
