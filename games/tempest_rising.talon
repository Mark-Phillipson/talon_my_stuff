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

# This is a list of the commands that are specific to the Tempest Rising game
tag(): user.talon_hud_automatic_hide
game <user.arrow_key>:
    key(arrow_key)
    repeat(6)
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
Hold:
    key(g)
[(Unit |) Command Slot 1]:
    key(z)
[(Unit |) Command Slot 2]:
    key(x)
[(Unit |) Command Slot 3]:
    key(c)
[(Unit |) Command Slot 4]:
    key(v)
[(Unit |) Command Slot 5]:
    key(b)
[select] [all] units:
    key(q)
[select] [all] units [on] screen:
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
[(select |) (all |) units]:
    key(q)
[(select |) (all |) units (on screen |)]:
    key(w)
[(Player Command |) Slot 1]:
    key(h)
[(Player Command |) Slot 2]:
    key(j)
[(Player Command |) Slot 3]:
    key(k)
support power four:
    key(l)
support power:
    key("'")
# Build grid
buildings tab:
    key(e)
[(tab |) buildings]:
    key(e)
[(tab |) defenses]:
    key(r)
[(tab |) infantry]:
    key(t)
[(tab |) vehicles]:
    key(y)
[(tab |) aerial]:
    key(u)
[(production |) slot one]:
    key(f1)
defenses tab:
    key(r)
infantry tab:
    key(t)
[(support |) power four]:
    key(l)
[(support |) power]:
    key("'")
vehicles tab:
    key(y)
aerial tab:
    key(u)
production slot one:
    key(f1)
take [all]:
    key(w)
go home: key(backspace)
pause [game]: key(keypad_multiply)
hold escape: key(escape:down)
hold control: key(ctrl:down)
release escape: key(escape:up)
release control: key(ctrl:up)
touch: user.game_click(0)
context: user.game_click(1)
middle: user.game_click(2)

clear selection: user.mouse_hold_seconds(1, 3)
focus one:
    key(1)
    sleep(30ms)
    key(1)
focus two:
[(screen |) infantry]:
    key(lshift-w)
    sleep(30ms)
    key(rshift-w)
[(screen |) vehicles]:
    key(lctrl-w)
    sleep(30ms)
    key(rctrl-w)
[(screen |) air]:
    key(lalt-w)
    sleep(30ms)
    key(ralt-w)
[(structures |) infantry]:
    key(lctrl-t)
    sleep(30ms)
    key(rctrl-t)
[(structures |) vehicle]:
    key(lalt-t)
    sleep(30ms)
    key(ralt-t)
[(structures |) air]:
    key(lctrl-t)
    sleep(30ms)
    key(rctrl-t)
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
all infantry:
    key(lshift-q)
    sleep(30ms)
    key(rshift-q)
all vehicles:
    key(lctrl-q)
    sleep(30ms)
    key(rctrl-q)
every unit:
    key(lalt-q)
    sleep(30ms)
    key(ralt-q)
screen infantry:
    key(lshift-w)
    sleep(30ms)
    key(rshift-w)
screen vehicles:
    key(lctrl-w)
    sleep(30ms)
    key(rctrl-w)
screen air:
    key(lalt-w)
    sleep(30ms)
    key(ralt-w)
infantry structures:
    key(lctrl-t)
    sleep(30ms)
    key(rctrl-t)
vehicle structures:
    key(lalt-t)
    sleep(30ms)
    key(ralt-t)
air structures:
    key(lctrl-t)
    sleep(30ms)
    key(rctrl-t)
