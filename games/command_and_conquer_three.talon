app: cnc3ep1.dat
-
settings():
    user.mode_indicator_show = 0
    # Choose how pop click should work in 'control mouse' mode
    # 0 = off
    # 1 = on with eyetracker but not zoom mouse mode
    # 2 = on but not with zoom mouse mode
    user.mouse_enable_pop_click = 0
    key_hold = 50
buildings | production: key(e)
power plant:
    key(e)
    key(f1)
refinery:
    key(e)
    key(f2)
barracks:
    key(e)
    key(f3)
war factory:
    key(e)
    key(f4)
(operations centre) | (command post):
    key(e)
    key(f5)
(air tower) | airfield:
    key(e)
    key(f6)
(secret shrine) | armory:
    key(e)
    key(f7)
tec lab:
    key(e)
    key(f8)
chemical plant:
    key(e)
    key(f9)
crane:
    key(e)
    key(f10)
engineering facility:
    key(e)
    key(f11)
support: key(r)
(turret) | (watchtower):
    key(r)
    key(f1)
(laser turret) | (cannon):
    key(r)
    key(f2)
(sam turret) | (AA battery):
    key(r)
    key(f3)
[tiberian] silo:
    key(r)
    key(f4)
(tower) | (sonic):
    key(r)
    key(f5)
(voice of Caine) | (ion cannon):
    key(r)
    key(f6)
(obelisk) | (air pad):
    key(r)
    key(f7)
(temple of nod) | (surveyor):
    key(r)
    key(f8)
air support [tower]:
    key(r)
    key(f9)
emissary:
    key(r)
    key(f10)
infantry: key(t)
[militant] squad:
    key(t)
    key(f1)
(militant rocket squad) | rocket:
    key(t)
    key(f2)
saboteur | engineer:
    key(t)
    key(f3)
fanatics:
    key(t)
    key(f4)
black hand:
    key(t)
    key(f5)
vehicles: key(y)
attack bike:
    key(y)
    key(f1)
raider buggy:
    key(y)
    key(f2)
[scorpion] tank:
    key(y)
    key(f3)
stealth tank:
    key(y)
    key(f4)
harvester:
    key(y)
    key(f4)
construction vehicle:
    key(y)
    key(f5)
flame tank:
    key(y)
    key(f6)
reckoner:
    key(y)
    key(f7)
beam cannon:
    key(y)
    key(f8)
aircraft: key(u)
venom:
    key(u)
    key(f1)
[vertigo] bomber:
    key(u)
    key(f2)
cell mode: key(z)
power mode: key(x)
repair mode: key(c)
game <user.arrow_key>:
    key(arrow_key)
    repeat(2)
fly <user.arrow_key>:
    key(arrow_key)
    repeat(2)
    sleep(50ms)
    key(arrow_key)
    repeat(2)
    sleep(50ms)
    key(arrow_key)
    repeat(2)
    sleep(50ms)
council | counsel | cancel:
    mouse_click(1)
    sleep(50ms)
    mouse_click(1)
take [all]:
    mouse_move(110, 10)
    sleep(100ms)
    user.mouse_drag(0)
    sleep(100ms)
    mouse_move(1650, 250)
    sleep(100ms)
    mouse_move(1650, 979)
    sleep(100ms)
    mouse_click(0)
pause: key(esc)
units: key(q)
matching units: key(w)
stop: key(s)
scatter: key(ctrl-x)
assault move: key(f)
next harvester: key(n)
home: key(h)
go bookmark one: key(j)
go bookmark two: key(k)
go bookmark three: key(l)
go bookmark four: key(;)
set bookmark one: key(ctrl-j)
set bookmark two: key(ctrl-k)
set bookmark three: key(ctrl-l)
set bookmark four: key(ctrl-;)
reset camera: key(keypad_5)
zoom: key(keypad_8)
zoom out: key(keypad_2)
rotate left: key(keypad_4)
rotate right: key(keypad_6)
aggressive stance: key(alt-a)
defensive stance: key(alt-s)
hold ground: key(alt-d)
hold fire: key(alt-f)
status: key(o)
Toggle heads up display: key(end)
sub tab: key(tab)
previous tab: key(ctrl-tab)
activate first: key(ctrl-a)
activate second: key(ctrl-s)
activate third: key(ctrl-d)
activate fourth: key(ctrl-f)
attack:
    key(a)
    sleep(50ms)
    mouse_click(0)
