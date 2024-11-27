mode: dictation
-
tabby: key(tab)
^enter: key(enter)
^command (return | enter):
    mode.disable("dictation")
    mode.enable("command")
    sleep(100ms)
    key(enter)
