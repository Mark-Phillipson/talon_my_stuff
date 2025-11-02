app.exe: windowsterminal.exe
-
tag(): terminal
tag(): user.tabs

tab new: key(ctrl-shift-t)
tab close: key(ctrl-shift-w)
pane split: key(ctrl-shift-d)
move focus: key(ctrl-shift-')
move focus <number_small>:
    key(ctrl-shift-')
    repeat(number_small-1)
move focus left: key(ctrl-shift-left)
move focus right: key(ctrl-shift-right)
move focus up: key(ctrl-shift-up)
move focus down: key(ctrl-shift-down)
move pane: key(ctrl-shift-')
move pane <number_small>:
    key(ctrl-shift-')
    repeat(number_small-1)
move pane left: key(ctrl-shift-left)
move pane right: key(ctrl-shift-right)
move pane up: key(ctrl-shift-up)
resize pane: key(ctrl-shift-')
export text:
    key(ctrl-shift-p)
    sleep(100ms)
    insert("export ")
    sleep(50ms)
    key(enter)
[go command] palette:
    key(ctrl-shift-p)
hunt this: key(ctrl-shift-f)
create issue [<user.text>]:
    insert("gh issue create ")
    insert(user.text)
dotnet restore:
    insert("dotnet restore")
    sleep(100ms)
    key(enter)
start rails server:
    insert("rails server")
    sleep(100ms)
    key(enter)
create rails controller:
    insert("rails generate controller name action ")
select all: key(ctrl-shift-a)
copy that: key(ctrl-c)
talon log:
    insert("Get-Content C:\\Users\\MPhil\\AppData\\Roaming\\talon\\talon.log -Wait")
talon log clear:
    insert("Clear-Content C:\\Users\\MPhil\\AppData\\Roaming\\talon\\talon.log")
