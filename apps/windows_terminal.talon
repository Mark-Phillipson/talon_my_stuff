app: WindowsTerminal.exe
-
new tab: key(ctrl-shift-t)
close tab: key(ctrl-shift-w)
split pane: key(ctrl-shift-d)
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
(command palette) | please:
    key(ctrl-shift-p)
