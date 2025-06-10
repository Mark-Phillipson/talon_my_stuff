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
^(backspace | wipe) <user.number_signed_small>:
    key(backspace)
    repeat(number_signed_small-1)
^(delete | forward delete) <user.number_signed_small>:
    key(delete)
    repeat(number_signed_small-1)
^space: key(space)
^go left: key(left)
^go right: key(right)
^go up: key(up)
^go down: key(down)

