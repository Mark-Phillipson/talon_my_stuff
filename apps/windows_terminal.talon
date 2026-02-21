app.exe: windowsterminal.exe
and os: windows
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
rubout:
    user.throttle_backspace(1)
rubout <number_small>:
    user.throttle_backspace(number_small)
rubout first:
    user.throttle_backspace(1)
rubout second:
    user.throttle_backspace(2)
rubout third:
    user.throttle_backspace(3)
rubout fourth:
    user.throttle_backspace(4)
rubout fifth:
    user.throttle_backspace(5)
rubout sixth:
    user.throttle_backspace(6)
rubout seventh:
    user.throttle_backspace(7)
rubout eighth:
    user.throttle_backspace(8)
rubout ninth:
    user.throttle_backspace(9)
rubout tenth:
    user.throttle_backspace(10)
