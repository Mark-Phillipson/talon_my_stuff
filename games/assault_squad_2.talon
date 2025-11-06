app.exe: e:\steamlibrary\steamapps\common\men of war assault squad 2\mowas_2.exe
-
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
    # ...existing code...

# Additional commands from screenshot
dismiss squad:
    key(k)

centre on active unit:
    key(shift:down)
    key(f)
    key(shift:up)

previous unit:
    key(period)

next unit:
    key(comma)

fire mode:
    key(lbracket)

movement mode:
    key(rbracket)

game speed:
    key(backspace)

objectives:
    key(o)
    # ...existing code...

# Additional commands from second screenshot
message history:
    key(h)

inventory:
    key(i)

map:
    key(m)

map controls:
    key(ctrl:down)
    key(m)
    key(ctrl:up)

highlight items:
    key(c)

highlight corpses:
    key(v)

pause:
    key(pause)

screenshot:
    key(sysrq)

capture video:
    key(f11)
    # ...existing code...

# Additional commands from third screenshot
game menu:
    key(escape)

direct control on off:
    key(e)

quick aim:
    key(j)

direct control modifier:
    key(ctrl)

forward:
    key(w)

backward:
    key(s)

left:
    key(a)

right:
    key(d)
    # ...existing code...

# Additional commands from fourth screenshot
fire:
    mouse_click(0)

switch weapon:
    mouse_click(1)

switch fire mode:
    mouse_click(2)

change reload ammo:
    key(space)

next machine gun:
    key(shift:down)
    key(space)
    key(shift:up)

camera rotation:
    mouse_click(2)

zoom in:
    key(plus)
    # ...existing code...

# Additional commands from fifth screenshot
zoom out:
    key(numpad_minus)

rotate left:
    key(left)

rotate right:
    key(right)

pitch up:
    key(up)

pitch down:
    key(down)

stand prone:
    key(shift:down)
    key(q)
    key(shift:up)

stance up:
    key(q)

stance down:
    key(alt:down)
    key(alt:up)
    # ...existing code...

# Additional commands from sixth screenshot
drop item:
    key(shift:down)
    key(d)
    key(shift:up)

throw frag grenade:
    key(f1)

throw at grenade:
    key(f2)

smoke grenade:
    key(f3)

use rocket launcher:
    key(f4)

attack:
    key(f5)

attack ground:
    key(f6)
    # ...existing code...

# Additional commands from seventh screenshot
melee attack:
    key(f7)

heal:
    key(f8)

drop off:
    key(g)

cancel:
    key(f)

examine:
    key(x)

drop put item:
    key(b)

turn:
    key(shift:down)
    key(r)
    key(shift:up)

repair:
    key(shift:down)
    key(g)
    key(shift:up)

attach:
    key(shift:down)
    key(g)
    key(shift:up)
    # ...existing code...

# Additional commands from eighth screenshot
team chat:
    key(z)

global chat:
    key(shift:down)
    key(z)
    key(shift:up)

show score table:
    key(tab)

exit vehicle:
    key(l)
    key(l)

push to talk:
    key(t)

mute microphone:
    key(ctrl:down)
    key(t)
    key(ctrl:up)

set team marker:
    key(n)
    # ...existing code...

# Additional commands from ninth screenshot
assign squad 1:
    key(shift:down)
    key(1)
    key(shift:up)

assign squad 2:
    key(shift:down)
    key(2)
    key(shift:up)

assign squad 3:
    key(shift:down)
    key(3)
    key(shift:up)

assign squad 4:
    key(shift:down)
    key(4)
    key(shift:up)

assign squad 5:
    key(shift:down)
    key(5)
    key(shift:up)

assign squad 6:
    key(shift:down)
    key(6)
    key(shift:up)

assign squad 7:
    key(shift:down)
    key(7)
    key(shift:up)

assign squad 8:
    key(shift:down)
    key(8)
    key(shift:up)
    # ...existing code...

# Additional commands from tenth screenshot
select squad 2:
    key(2)

select squad 3:
    key(3)

select squad 4:
    key(4)

select squad 5:
    key(5)

select squad 6:
    key(6)

select squad 7:
    key(7)

select squad 8:
    key(8)

select squad 9:
    key(9)

dismiss:
    key(shift:down)
    key(0)
    key(shift:up)
