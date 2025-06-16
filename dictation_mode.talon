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
^backspace first: key(backspace:1)
^backspace second: key(backspace:2)
^backspace third: key(backspace:3)
^backspace fourth: key(backspace:4)
^backspace fifth: key(backspace:5)
^backspace sixth: key(backspace:6)
^backspace seventh: key(backspace:7)
^backspace eighth: key(backspace:8)
^backspace ninth: key(backspace:9)
^backspace tenth: key(backspace:10)
^delete: key(delete)
^delete first: key(delete:1)
^delete second: key(delete:2)
^delete third: key(delete:3)
^delete fourth: key(delete:4)
^delete fifth: key(delete:5)
^delete sixth: key(delete:6)
^delete seventh: key(delete:7)
^delete eighth: key(delete:8)
^delete ninth: key(delete:9)
^delete tenth: key(delete:10)
^space: key(space)
^go left: key(left)
^go right: key(right)
^go up: key(up)
^go down: key(down)


