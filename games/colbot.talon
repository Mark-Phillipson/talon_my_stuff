app.exe: colobot.exe
-

# Colobot
# Colobot is a game that teaches programming in C++ and JavaScript. It is a game where you control robots to complete tasks.

settings():
    user.mode_indicator_show = 0
    # Choose how pop click should work in 'control mouse' mode
    # 0 = off
    # 1 = on with eyetracker but not zoom mouse mode
    # 2 = on but not with zoom mouse mode
    user.mouse_enable_pop_click = 0
    key_hold = 32
    # Zoom Mouse Options     
    tracking.zoom_live = true
    tracking.zoom_height = 300
    tracking.zoom_width = 300
    tracking.zoom_scale = 4
    

game <user.arrow_key>:
    key(arrow_key)
    repeat(4)
fly <user.arrow_key>:
    key(arrow_key)
    repeat(7)
    sleep(50ms)
    key(arrow_key)
    repeat(7)
    sleep(50ms)
# Basic commands
move forward:
    key(up)
move back:
    key(down)
move left:
    key(left)
move right:
    key(right)
takeoff: key(shift)
descend: key(ctrl)
main action: key(e)
astronaut: key(home)
previous: key(keypad_0)
camera [toggle]: key(space)
zoom [in]: key(keypad_plus)
zoom out: key(keypad_minus)
pause [game]: key(keypad_decimal)
mission [instructions]: key(f1)
programming [help]: key(f2)
slowdown: key(f6)
normal [speed]: key(f7)
fast [speed]: key(f8)
save [game]: key(f5)
load [game]: key(f9)
exit [mission]: key(escape)
