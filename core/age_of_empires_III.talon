os: windows
and app.name: Age of Empires III: Definitive Edition
os: windows
and app.exe: aoe3de_s.exe

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
    mouse_move(90, 116)
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
move forward: key(up)
move back: key(down)
move left: key(left)
move right: key(right)
# Canonicalized: legacy AoE3 uses `attack move: key(r)` below; removed legacy `attack` mapping.
stop: key(s)
############################################################
# Age of Empires: Definitive Edition - Full Command Set
# Source: https://ageofempires.fandom.com/wiki/Hotkey
############################################################

# --- Building Selection ([Go To] Building) ---
[go to] town [center]: 
    key(f1)
    sleep(100ms)
    key(f1)
#find town centre: key(ctrl-s)
[go to] barracks: key(ctrl-a)
[go to] arsenal: key(ctrl-x)
[go to] stable: key(ctrl-l)
[go to] dock: key(ctrl-d)
[go to] tower: key(ctrl-c)
[go to] factory: key(ctrl-b)
[go to] artillery: key(ctrl-f)
[go to] castle: key(ctrl-f)
[go to] fort: key(ctrl-v)

# --- Build Menu (Villager Selected) ---
[build] house: key(q)
[build] farm: key(e)
[build] dock: key(t)
[build] market: key(w)
[build] church: key(f)
[build] tower: key(y)
[build] town center: key(n)
[build] wall: key(s)
[build] gate: key(s)
[build] stable: key(h)
[build] barracks: key(g)
[build] artillery [foundry]: key(z)

# --- Unit Selection & Control ---
[cycle] idle [villagers]: key(.)
[select] all idle [villagers]: key(shift-.)
[cycle] idle military: key(ctrl-f3)
[select] all military: key(ctrl-shift-f3)
[select] all military onscreen: key(alt-,)
select all military buildings: key(ctrl-shift-space)

# --- Find Unit Hotkeys ---
[find] selection: key(ctrl-space)
[find] last notification: key(home)
[find] all idle villagers: key(shift-.)
[find] architect: key([)

# Additional Find Unit Hotkeys from settings
[find] all idle military: key(ctrl-f3)
[find] all idle healers: key(ctrl-f3)
[find] all military: key(shift-ctrl-f3)
[find] (house | longhouse | teepee | shrine | village | torp): key(ctrl-q)
[find] (market | livestock market): key(ctrl-w)
[find] (mill | farm | rice paddy | field | hacienda): key(ctrl-e)
# find granary: (no hotkey shown)
[find] dock port: key(ctrl-r)
[find] (trading post | tambo): key(ctrl-t)
# find native site trading post: (no hotkey shown)
[find] (church | mosque | community | plaza | monastery | mountain monastery | university): key(ctrl-y)
[find] (barracks | blockhouse | war hut | war academy | war camp | hospital): key(ctrl-a)
[find] town (center | capitol): key(ctrl-s)
[find] (stables | corral | nobles hut | caravanserai | kallanka | commandery): key(ctrl-d)
[find] (artillery | foundry | siege workshop | castle): key(ctrl-f)
[find] estate: key(ctrl-g)
[find] [tribal] marketplace: key(ctrl-b)
[find] (saloon | tavern | consulate): key(ctrl-h)
[find] (livestock penn | sacred field): key(ctrl-z)
minimap:
    mouse_move(1534, 894)
    sleep(30ms)
    mouse_click(0)
# --- Unit Actions ---
attack move: key(ctrl-shift-z)
attack:
    key(space)
    sleep(30ms)
    mouse_click(0)
[find] selection: key(ctrl-space)
go there: key(ctrl-space)
patrol:    key(ctrl-shift-z)
drop off resources: key(a)
seek shelter: key(f)
set line formation: key(z)
set flank formation: key(v)
unload transport: key(q)
garrison: key(g)
ungarrison: key(b)
stop all tasks: key(shift-g)
delete unit: key(delete)
delete all selected units: key(shift-delete)

# --- Control Groups ---
set control group [number]: key(ctrl-{number})
select control group [number]: key({number})
append to control group [number]: key(shift-{number})
ungroup selected: key(u)

# --- Game World Hotkeys (Camera) ---
move camera left: key(arrowleft)
move camera right: key(arrowright)
move camera forward: key(arrowup)
move camera backward: key(arrowdown)
move camera forward left: key(numpad7)
move camera forward right: key(numpad9)
move camera backward left: key(numpad1)
move camera backward right: key(numpad3)
camera zoom in: key(numpadplus)
camera zoom out: key(numpadminus)

# --- Camera & UI ---
[show] game menu: key(esc)
hide game menu: key(esc)
exit tech tree: key(esc)
show chat [window]: key(enter)
[go to] last notification: key(home)
toggle time display: key(f11)
previous chat message: key(pageup)
next chat message: key(pagedown)
toggle minimap: key(alt-d)

enter flare mode: key(alt-f)

# --- Miscellaneous ---
display tech tree: key(f5)
spectate player [number]: key(ctrl-shift-f{number})

# --- General Game Hotkeys (F-keys) ---
find town center: key(f1)
find home city: key(f2)
[toggle] [home] city:
    mouse_move(40, 40)
    sleep(30ms)
    mouse_click(0)
[find] explorer: key(f3)
find idle military: key(f4)
toggle game time: key(f5)
toggle score display: key(f6)
toggle player summary dialog: key(f7)
pause [Sure]: key(f8)
quick save game: key(f9)
quick load game: key(f10)
enable friend or foe colors: key(f11)
eject: key(ctrl-shift-e)
# --- Command Hotkeys ---
stop: key(shift-ctrl-s)
toggle auto repair: key(shift-ctrl-r)
eject units: key(shift-ctrl-e)
garrison unit: key(shift-ctrl-g)

# --- Photo Mode ---
photo mode: key(ctrl-f7)
photo move camera left: key(a)
photo move camera right: key(d)
photo move camera forward: key(w)
photo move camera backward: key(s)
photo camera zoom in: key(numpadplus)
photo camera zoom out: key(numpadminus)
photo move camera up: key(q)
photo move camera down: key(e)
photo reset camera start location: key(r)
toggle ui on/off: key(t)
toggle fog of war: key(f)
toggle blackmap: key(g)
photo camera rotate left: key(alt-d)
photo camera rotate right: key(alt-a)
photo camera rotate up: key(alt-w)
photo camera rotate down: key(alt-s)

# --- Tycoon Package Hotkeys ---
# toggle tycoon package menu: (no hotkey shown)
tycoon package 1: key(q)
multiple tycoon package 1: key(shift-q)
tycoon package 2: key(w)
multiple tycoon package 2: key(shift-w)
tycoon package 3: key(e)
multiple tycoon package 3: key(shift-e)
tycoon package 4: key(r)
multiple tycoon package 4: key(shift-r)

# --- Notes ---
# Some commands (e.g. control groups, spectate) require a number argument.
# For advanced unit training/building, see wiki for civ-specific hotkeys.
