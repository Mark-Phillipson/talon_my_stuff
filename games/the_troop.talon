app: The Troop.exe
-
settings():
    user.mode_indicator_show = 0
    # Choose how pop click should work in 'control mouse' mode
    # 0 = off
    # 1 = on with eyetracker but not zoom mouse mode
    # 2 = on but not with zoom mouse mode
    user.mouse_enable_pop_click = 0
    key_hold = 50

forward:
    key(w)
forward <number_small>:
    key(w)
    repeat(number_small-1)
back:
    key(a)
back <number_small>:
    key(a)
    repeat(number_small-1)
right:
    key(d)
right <number_small>:
    key(d)
    repeat(number_small-1)
down:
    key(s)
down <number_small>:
    key(s)
    repeat(number_small-1)
zoom:
    key(keypad_divide)
zoom out:
    key(keypad_multiply)
next unit:
    key(tab)
previous unit:
    key(ctrl)

<user.screen_step_screen_one> <user.screen_step_screen_one>:
    mouse_move(screen_step_screen_one_1, screen_step_screen_one_2)
#mouse_click(1)
game (forward | up):
    key(w)
    repeat(8)
fly (forward | up):
    key(w)
    repeat(7)
    sleep(50ms)
    key(w)
    repeat(7)
    sleep(50ms)
    key(w)
    repeat(7)
    sleep(50ms)
game (back | down):
    key(s)
    repeat(8)
fly (back | down):
    key(s)
    repeat(7)
    sleep(50ms)
    key(s)
    repeat(7)
    sleep(50ms)
    key(s)
    repeat(7)
    sleep(50ms)
game left:
    key(a)
    repeat(8)
fly left:
    key(a)
    repeat(7)
    sleep(50ms)
    key(a)
    repeat(7)
    sleep(50ms)
    key(a)
    repeat(7)
    sleep(50ms)
game right:
    key(d)
    repeat(8)
fly right:
    key(d)
    repeat(7)
    sleep(50ms)
    key(d)
    repeat(7)
    sleep(50ms)
    key(d)
    repeat(7)
    sleep(50ms)
centre:
    mouse_move(800, 500)
minimap: key(m)
log: key(l)
line of sight: key(r)
move: key(z)
attack: key(f)
grenade: key(g)
rotate left: key(e)
rotate right: key(q)
