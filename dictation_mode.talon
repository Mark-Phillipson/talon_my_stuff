mode: dictation
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
backspace <user.number_signed_small>:
    key(backspace)
    repeat(number_signed_small-1)
^space: key(space)
^go left: key(left)
^go right: key(right)
^go up: key(up)
^go down: key(down)
