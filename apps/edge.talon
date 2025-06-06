app: microsoft_edge
-
tag(): browser
tag(): user.tabs
settings():
    # Stop continuous scroll/gaze scroll with a pop
    user.mouse_enable_pop_stops_scroll = false
    # Stop pop click with 'control mouse' mode
    user.mouse_enable_pop_click = 0
    # Stop mouse scroll down using hiss noise
    user.mouse_enable_hiss_scroll = false
    # Stopped using this because it gets triggered all the time accidentally even when breathing for example

(closed tab) | (close tab): key(ctrl-w)
theatre mode: key(alt-t)
previous tab: key(ctrl-shift-tab)
next tab: key(ctrl-tab)
refresh page: key(f5)
skip ads:
    mouse_move(3546, 970)
destroy drone:
    insert("!drone -1")
    key(enter)
start drone:
    insert("!drone")
    key(enter)
drone diagonal:
    insert("!D56")
    sleep(100ms)
    key(enter)
    sleep(1000ms)
    insert("!R55")
    sleep(100ms)
    key(enter)
drone left:
    insert("!L55")
    sleep(100ms)
    key(enter)
drone right:
    insert("!R55")
    sleep(100ms)
    key(enter)
drone up:
    insert("!U55")
    sleep(100ms)
    key(enter)
drone down:
    insert("!D55")
    sleep(100ms)
    key(enter)
smoke on:
    insert("!smokeon")
    sleep(100ms)
    key(enter)
smoke white:
    insert("!smokecolor white")
    sleep(100ms)
    key(enter)
smoke red:
    insert("!smokecolor red")
    sleep(100ms)
    key(enter)
smoke green:
    insert("!smokecolor green")
    sleep(100ms)
    key(enter)
smoke blue:
    insert("!smokecolor blue")
    sleep(100ms)
    key(enter)
smoke pink:
    insert("!smokecolor pink")
    sleep(100ms)
    key(enter)
local host chan of custody:
    user.open_url("https://localhost:44343/")
toggle voice: key(ctrl-shift-u)
pop out chat:
    key(alt-d right)
    sleep(100ms)
    key(shift-home)
    sleep(100ms)
    key(ctrl-c)
    sleep(100ms)
    key(ctrl-t)
    sleep(200ms)
    key(ctrl-v)
    sleep(100ms)
    insert("/chat")
    sleep(200ms)
    key(enter)
    mimic("tab split")
tab filter: key(ctrl-shift-a)
go [to] top: key(ctrl-home)
go [to] bottom: key(ctrl-end)

#Developer Tools

console focus: key(ctrl-l)
console toggle: key(ctrl-`)
toggle breakpoint input window: key(ctrl-alt-b)
console evaluate text: key(ctrl-shift-e)
frame next: key(ctrl-.)
frame previous: key(ctrl-,)
snippet run: key(ctrl-enter)
step into: key(f11)
step out: key(shift-f11)
step over: key(f10)
continue: key(f8)
[toggle] breakpoint: key(ctrl-b)
panel next: key(ctrl-])
panel previous: key(ctrl-[)
hunt this: key(ctrl-f)
(find again) | (hunt next): key(f3)
test Blazor CRUD example:
    user.open_url("https://localhost:7026/")
    sleep(400ms)
    key(alt-t)
    sleep(100ms)
    insert("example")
    sleep(200ms)
    key(tab)
    sleep(100ms)
    key(down)
    sleep(100ms)
    key(tab)
    key(enter)
    sleep(100ms)
    key(tab:15)
    sleep(100ms)
    key(space)
    key(tab:9)
    sleep(100ms)
    key(space)
    sleep(100ms)
    key(alt-r)
    sleep(100ms)
    key(alt-g)
microphone mute:
    # Google Meet
    key(ctrl-d)
start realtime:
    speech.disable()
    key(alt-m)
^(realtime copy)+$:
    key(alt-t)
    sleep(100ms)
    key(ctrl-a)
    sleep(100ms)
    key(ctrl-c)
^(realtime paste)+$:
    key(alt-t)
    sleep(100ms)
    key(ctrl-a)
    sleep(100ms)
    key(ctrl-c)
    sleep(100ms)
    key(alt-tab)        
    sleep(100ms)
    key(ctrl-v)