mode: dictation
mode: mixed
-
settings():
    # Increase command priority in mixed mode
    speech.timeout(0.300)
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


