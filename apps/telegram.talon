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

#Slash Commands

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

mute assistant:
    insert("/sound_off")
    sleep(100ms)
    key("enter")

unmute assistant:
    insert("/sound_on")
    sleep(100ms)
    key("enter")

assistant sound status:
    insert("/sound_status")
    sleep(100ms)
    key("enter")

do not disturb on:
    insert("/dnd_on")
    sleep(100ms)
    key("enter")

do not disturb off:
    insert("/dnd_off")
    sleep(100ms)
    key("enter")

do not disturb status:
    insert("/dnd_status")
    sleep(100ms)
    key("enter")

do not disturb enable:
    insert("/do_not_disturb_on")
    sleep(100ms)
    key("enter")

do not disturb disable:
    insert("/do_not_disturb_off")
    sleep(100ms)
    key("enter")

check gmail status:
    insert("/gmail_status")
    sleep(100ms)
    key("enter")

check calendar status:
    insert("/calendar_status")
    sleep(100ms)
    key("enter")

check clipboard status:
    insert("/clipboard_status")
    sleep(100ms)
    key("enter")

search clipboard <user.text>: insert("/clipboard_search {text}")

view clipboard today:
    insert("/clipboard_today")
    sleep(100ms)
    key("enter")

list calendar events:
    insert("/calendar_events")
    sleep(100ms)
    key("enter")

create calendar event: insert("/calendar_create ")

authorize google:
    insert("/authorize")
    sleep(100ms)
    key("enter")

create scheduled test event:
    insert("/create_event")
    sleep(100ms)
    key("enter")

check fable availability:
    insert("/fable")
    sleep(100ms)
    key("enter")

list podcasts:
    insert("/podcasts")
    sleep(100ms)
    key("enter")

play podcast <user.text>: insert("/play_podcast {text}")

add podcast <user.text>: insert("/add_podcast {text}")

developer tips: insert("/devtips ")

natural command: insert("/natural ")

test text to speech:
    insert("/tts_test")
    sleep(100ms)
    key("enter")
