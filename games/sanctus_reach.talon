os: windows
and app.name: SanctusReach.EXE
os: windows
and app.exe: sanctusreach.exe
-

settings():
    user.mode_indicator_show = 0
    user.mouse_enable_pop_click = 0
    key_hold = 50
<user.screen_step_two_commandconquer> <user.screen_step_vertical>:
        mouse_move(screen_step_two_commandconquer, screen_step_vertical)
game <user.arrow_key>:
    key(arrow_key)
    repeat(4)
fly <user.arrow_key>:
    key(arrow_key)
    repeat(4)
    sleep(50ms)
    key(arrow_key)
    repeat(4)
    sleep(50ms)
    key(arrow_key)
    repeat(4)
    sleep(50ms)
zoom: key(keypad_8)
zoom out: key(keypad_2)
centre:
    mouse_move(800, 500)
camera left: key(a)
camera right: key(d)
camera up: key(w)
camera down: key(s)
end turn: 
    mouse_move(1770, 1025)
    sleep(100ms)
    mouse_click(0)