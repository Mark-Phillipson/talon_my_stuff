mode: dictation
mode: mixed
mode: command

-
^tabby: key(tab)
^enter: key(enter)
^command (return | enter):
    mode.disable("dictation")
    mode.enable("command")
    sleep(100ms)
    key(enter)
^backspace: key(backspace)
^delete: key(delete)
^space: key(space)
^go left: key(left)
^go right: key(right)
^go up: key(up)
^go down: key(down)

# Ordinal commands (first, second, third, etc.)
^backspace <user.ordinals_small>: key("backspace:{ordinals_small}")
^delete <user.ordinals_small>: key("delete:{ordinals_small}")
^go left <user.ordinals_small>: key("left:{ordinals_small}")
^go right <user.ordinals_small>: key("right:{ordinals_small}")
^go up <user.ordinals_small>: key("up:{ordinals_small}")
^go down <user.ordinals_small>: key("down:{ordinals_small}")

new paragraph: key(enter)
fresh line:
    key(end)
    key(enter)
fresh line above:
    key(home)
    key(home)
    key(enter)
    key(up)
fresh paragraph:
    key(end)
    key(enter)
    key(enter)
go end: key(end)
