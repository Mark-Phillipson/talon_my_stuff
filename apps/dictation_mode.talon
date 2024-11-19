mode: dictation
-
command (return | enter):
    mode.disable("dictation")
    mode.enable("command")
    sleep(100ms)
    key(enter)
