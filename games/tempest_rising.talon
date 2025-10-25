app.name: TempestGame
app.app: tempestgame
-
settings():
    user.mode_indicator_show = 0
    # Choose how pop click should work in 'control mouse' mode
    # 0 = off
    # 1 = on with eyetracker but not zoom mouse mode
    # 2 = on but not with zoom mouse mode
    user.mouse_enable_pop_click = 0
    key_hold = 50

    # Zoom Mouse Options
    tracking.zoom_live = true
    tracking.zoom_height = 300
    tracking.zoom_width = 300
    tracking.zoom_scale = 4

# This is a list of the commands that are specific to the Company of Heroes 2 game
tag(): user.talon_hud_automatic_hide
game <user.arrow_key>:
    key(arrow_key)
    repeat(4)
fly <user.arrow_key>:
    key(arrow_key)
    repeat(14)
# Basic commands
move forward:
    key(up)
move back:
    key(down)
move left:
    key(left)
move right:
    key(right)
attack [move]:
    key(a)
    sleep(30ms)
    key(ctrl:down)
    sleep(30ms)
    user.game_click(0)
    sleep(30ms)
    key(ctrl:up)
stop:
    key(s)
guard:
    key(d)
patrol:
    key(f)
hold position:
    key(g)
ability one:
    key(z)
ability two:
    key(x)
ability three:
    key(c)
ability four:
    key(v)
ability five:
    key(b)
select all units:
    key(q)
select all units on screen:
    key(w)

# Camera controls
center base:
    key(backspace)
rotate left:
    key('[:down')
    sleep(1100ms)
    key('[:up')
rotate right:
    key(']:down')
    sleep(1100ms)
    key(']:up')

# Sidebar commands
repair structure:
    key(i)
sell structure:
    key(o)
toggle power:
    key(p)
support power one:
    key(h)
support power two:
    key(j)
support power three:
    key(k)
support power four:
    key(l)
support power six:
    key("'")

# Build grid
buildings tab:
    key(e)
defenses tab:
    key(r)
infantry tab:
    key(t)
vehicles tab:
    key(y)
aerial tab:
    key(u)
production slot one:
    key(f1)
take [all]:
    mouse_move(60, 40)
    sleep(30ms)
    key(ctrl:down)
    sleep(30ms)
    # user.mouse_drag(0)
    user.mouse_hold_seconds(0, 6)
    sleep(30ms)
    mouse_move(1670, 250)
    sleep(30ms)
    mouse_move(1670, 979)
    sleep(30ms)
    #user.game_click(0)
    key(ctrl:up)
go home: key(backspace)
pause [game]: key(keypad_multiply)
hold escape: key(escape:down)
hold control: key(ctrl:down)
release escape: key(escape:up)
release control: key(ctrl:up)
touch: user.game_click(0)
clear selection: user.mouse_hold_seconds(1, 3)
focus one:
    key(1)
    sleep(30ms)
    key(1)
focus two:
    key(2)
    sleep(30ms)
    key(2)
focus three:
    key(3)
    sleep(30ms)
    key(3)
focus four:
    key(4)
    sleep(30ms)
    key(4)
