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
    mouse_click(0)
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
[toggle] map:
    key(keypad_0)
go there:
    mouse_click(0)
    key(keypad_0)
[next] idle [vehicle]:
    key(alt-/)
[next] idle infantry:
    key(alt-.)
[all] vehicles:
    key(ctrl-/)
[all] infantry:
    key(ctrl-.)
reset camera:
    key(backspace)
[game] pause:
    key(pause)
game stop:
    key(pause)
pause game:
    key(pause)
[game] menu:
    key(f10)
take [all]:
    mouse_move(60, 40)
    sleep(30ms)
    user.mouse_drag(0)
    sleep(30ms)
    mouse_move(1670, 250)
    sleep(30ms)
    mouse_move(1670, 979)
    sleep(30ms)
    mouse_click(0)
#save game: key(f5)
unit one: key(1)
srunit two: key(2)
unit three: key(3)
unit four: key(4)
unit five: key(5)
unit six: key(6)
unit seven: key(7)
unit eight: key(8)
unit nine: key(9)
unit zero: key(0)
centre:
    mouse_move(800, 500)
home: key(ctrl)
go home: key(home)
[unit] one track:
    key(1)
    key(1)
[unit] two track:
    key(2)
    key(2)
[unit] three track:
    key(3)
    key(3)
[unit] four track:
    key(4)
    key(4)
[unit] five track:
    key(5)
    key(5)
[unit] six track:
    key(6)
    key(6)
[unit] seven track:
    key(7)
    key(7)
[unit] eight track:
    key(8)
    key(8)
[unit] nine track:
    key(9)
    key(9)
[unit] zero track:
    key(0)
    key(0)
slot first:
    mouse_move(450, 855)
    sleep(30ms)
    mouse_click(0)
slot second:
    mouse_move(528, 855)
    sleep(30ms)
    mouse_click(0)
slot third:
    mouse_move(606, 855)
    sleep(30ms)
    mouse_click(0)
slot fourth:
    mouse_move(684, 855)
    sleep(30ms)
    mouse_click(0)
slot fifth:
    mouse_move(752, 855)
    sleep(30ms)
    mouse_click(0)
zoom out: user.mouse_scroll_down()
zoom: user.mouse_scroll_up()