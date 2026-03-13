app.name: Telegram Desktop
-

saved dialogue: key("ctrl-0")

cycle later: key("ctrl-pgdown")

cycle prior: key("ctrl-pgup")

search dialogue: key("ctrl-f")

secure telegram: key("ctrl-l")

minimize telegram: key("ctrl-m")

close telegram: key("ctrl-w")

terminate telegram: key("ctrl-q")

primary dialogue: key("ctrl-alt-home")

terminal dialogue: key("ctrl-alt-end")

contacts panel: key("ctrl-j")

folder advance: key("ctrl-shift-down")

folder previous: key("ctrl-shift-up")

mark readable: key("ctrl-r")

menu display: key("ctrl-backslash")

preview dialogue: key("ctrl-rbracket")

format bolden: key("ctrl-b")

format italic: key("ctrl-i")

hyperlink edit: key("ctrl-k")

monospace format: key("ctrl-shift-m")

format normalise: key("ctrl-shift-n")

reset session:
    insert("/reset")
    sleep(100ms)
    key("enter")
start session:
    insert("/start")
    sleep(100ms)
    key("enter")
list commands:
    insert("/help")
    sleep(100ms)
    key("enter")
