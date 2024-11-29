app.name: Company of Heroes 2
-
settings():
    user.mode_indicator_show = 0
    # Choose how pop click should work in 'control mouse' mode
    # 0 = off
    # 1 = on with eyetracker but not zoom mouse mode
    # 2 = on but not with zoom mouse mode
    user.mouse_enable_pop_click = 0
    key_hold = 50

# This is a list of the commands that are specific to the Company of Heroes 2 game
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
attack move:
    key(a)
stop:
    key(s)
retreat:
    key(t)
reinforce:
    key(r)
reverse drive:
    key(u)
primary build:
    key(v)
secondary build:
    key(b)
headquarters:
    key(f1)
tier one building:
    key(f2)
tier two building:
    key(f3)
tier three building:
    key(f4)
tier four building:
    key(f5)
set rally point:
    mouse_click(2)
capture point:
    key(ctrl-c)
attack point:
    key(ctrl-a)
defend point:
    key(ctrl-d)
toggle map:
    key(numpad0)
[next] idle vehicle:
    key(alt-/)
[next] idle infantry:
    key(alt-.)
[all] vehicles control:
    key(/)
[all] infantry control:
    key(.)
reset camera:
    key(backspace)
[game] pausej:
    key(pause)
[game] menu:
    key(f10)
take [all]:
    mouse_move(600, 40)
    sleep(30ms)
    user.mouse_drag(0)
    sleep(30ms)
    mouse_move(1200, 250)
    sleep(30ms)
    mouse_move(1200, 979)
    sleep(30ms)
    mouse_click(0)
save game: key(f5)
unit one: key(1)
unit two: key(2)
unit three: key(3)
unit four: key(4)
unit five: key(5)
unit six: key(6)
unit seven: key(7)
unit eight: key(8)
unit nine: key(9)
unit zero: key(0)
