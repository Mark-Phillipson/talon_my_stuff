app.exe: aoede.exe
-
settings():
    user.mode_indicator_show = 0
    # Choose how pop click should work in 'control mouse' mode
    # 0 = off
    # 1 = on with eyetracker but not zoom mouse mode
    # 2 = on but not with zoom mouse mode
    user.mouse_enable_pop_click = 0
    key_hold = 100
    # Zoom Mouse Options
    tracking.zoom_live = true
    tracking.zoom_height = 300
    tracking.zoom_width = 300
    tracking.zoom_scale = 4

# This is a list of the commands that are specific to the Company of Heroes 2 game
tag(): user.talon_hud_automatic_hide
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

game <user.arrow_key>:
    key(arrow_key)
    repeat(1)
fly <user.arrow_key>:
    key(arrow_key)
    repeat(5)
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
    mouse_click(0)
stop:
    key(s)
############################################################
# Age of Empires: Definitive Edition - Full Command Set
# Source: https://ageofempires.fandom.com/wiki/Hotkey
############################################################

# --- Building Selection ([Go To] Building) ---
[go to] town center:
    key(h)
[go to] barracks:
    key(ctrl-b)
[go to] archery range:
    key(ctrl-a)
[go to] stable:
    key(ctrl-l)
[go to] dock:
    key(ctrl-d)
[go to] temple:
    key(ctrl-y)
[go to] academy:
    key(ctrl-s)
[go to] government center:
    key(ctrl-u)
[go to] granary:
    key(ctrl-i)
[go to] storage pit:
    key(ctrl-z)
[go to] market:
    key(ctrl-m)
[go to] siege workshop:
    key(ctrl-k)

# --- Build Menu (Villager Selected) ---
build house:
    key(q)
build farm:
    key(a)
build granary:
    key(w)
build storage pit:
    key(e)
build dock:
    key(r)
build market:
    key(s)
build temple:
    key(f)
build tower:
    key(f)
build town center:
    key(z)
build wall:
    key(s)
build gate:
    key(d)
build stable:
    key(e)
build academy:
    key(a)
build archery range:
    key(w)
build barracks:
    key(q)
build government center:
    key(d)
build wonder:
    key(x)
build siege workshop:
    key(r)

# --- Unit Selection & Control ---
[cycle] idle [villagers]:
    key(.)
[select] all idle [villagers]:
    key(shift-.)
[cycle] idle military:
    key(,)
[select] all idle military:
    key(ctrl-,)
select all military:
    key(shift-,)
select all military onscreen:
    key(alt-,)
select all military buildings:
    key(ctrl-shift-space)

# --- Unit Actions ---
attack ground:
    key(t)
attack move:
    key(r)
drop off resources:
    key(a)
seek shelter:
    key(f)
set line formation:
    key(z)
set flank formation:
    key(v)
unload transport:
    key(q)
garrison:
    key(t)
ungarrison:
    key(b)
stop all tasks:
    key(g)
delete unit:
    key(delete)
delete all selected units:
    key(shift-delete)

# --- Control Groups ---
set control group [number]:
    key(ctrl-{number})
select control group [number]:
    key({number})
append to control group [number]:
    key(shift-{number})
ungroup selected:
    key(u)

# --- Camera & UI ---
[go to] last notification:
    key(home)
toggle time display:
    key(f11)
previous chat message:
    key(pageup)
next chat message:
    key(pagedown)
zoom in:
    key(ctrl-plus)
zoom out:
    key(ctrl-minus)

# --- Miscellaneous ---
display tech tree:
    key(f5)
spectate player [number]:
    key(ctrl-shift-f{number})

# --- Notes ---
# Some commands (e.g. control groups, spectate) require a number argument.
# For advanced unit training/building, see wiki for civ-specific hotkeys.
