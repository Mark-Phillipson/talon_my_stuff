app: cnc3ep1.dat
-
settings():
    user.mode_indicator_show = 0
    user.mouse_enable_pop_click = 0
    key_hold = 50
follow zero:
    key(0)
    sleep(50ms)
    key(f1)
    sleep(50ms)
    key(f1)
    sleep(50ms)
    key(f1)
    sleep(50ms)
    key(f1)
    key(0)
follow first:
    key(1)
    sleep(100ms)
    key(f1)
    sleep(100ms)
    key(f1)
    sleep(100ms)
    key(f1)
    sleep(100ms)
    key(f1)
    key(1)
follow second:
    key(2)
    sleep(50ms)
    key(f1)
    sleep(50ms)
    key(f1)
    sleep(50ms)
    key(f1)
    sleep(50ms)
    key(f1)
    key(2)
follow third:
    key(3)
    sleep(50ms)
    key(f1)
    sleep(50ms)
    key(f1)
    sleep(50ms)
    key(f1)
    sleep(50ms)
    key(f1)
    key(3)
follow fourth:
    key(4)
    sleep(50ms)
    key(f1)
    sleep(50ms)
    key(f1)
    sleep(50ms)
    key(f1)
    sleep(50ms)
    key(f1)
    key(4)
follow fifth:
    key(5)
    sleep(50ms)
    key(f1)
    sleep(50ms)
    key(f1)
    sleep(50ms)
    key(f1)
    sleep(50ms)
    key(f1)
    key(5)
follow sixth:
    key(6)
    sleep(50ms)
    key(f1)
    sleep(50ms)
    key(f1)
    sleep(50ms)
    key(f1)
    sleep(50ms)
    key(f1)
    key(6)
follow seventh:
    key(7)
    sleep(50ms)
    key(f1)
    sleep(50ms)
    key(f1)
    sleep(50ms)
    key(f1)
    sleep(50ms)
    key(f1)
    key(7)
follow eighth:
    key(8)
    sleep(50ms)
    key(f1)
    sleep(50ms)
    key(f1)
    sleep(50ms)
    key(f1)
    sleep(50ms)
    key(f1)
    key(8)
follow ninth:
    key(9)
    sleep(50ms)
    key(f1)
    sleep(50ms)
    key(f1)
    sleep(50ms)
    key(f1)
    sleep(50ms)
    key(f1)
    key(9)
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
tec center:
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
(obelisk):
    key(r)
    key(f7)
air pad:
    key(r)
    key(f8)
wall:
    key(r)
    key(f7)
(temple of nod):
    key(r)
    key(f8)
surveyor:
    key(r)
    key(f9)
air support [tower]:
    key(r)
    key(f9)
emissary:
    key(r)
    key(f10)
infantry: key(t)
i [militant] squad:
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
scout:
    key(t)
    key(f4)
grenadier:
    key(t)
    key(f5)
(black hand):
    key(t)
    key(f5)
sniper:
    key(t)
    key(f6)
[zone] trooper:
    key(t)
    key(f7)
commando:
    key(t)
    key(f8)
vehicles: key(y)
(attack bike) | pitbull:
    key(y)
    key(f1)
bulldog:
    key(y)
    key(f2)
buggy:
    key(y)
    key(f2)
predator:
    key(y)
    key(f3)
([scorpion] tank):
    key(y)
    key(f3)
APC:
    key(y)
    key(f6)
stealth tank:
    key(y)
    key(f4)
harvester:
    key(y)
    key(f4)
construction vehicle:
    key(y)
    key(f5)
(flame tank):
    key(y)
    key(f6)
shatterer:
    key(y)
    key(f7)
reckoner:
    key(y)
    key(f7)
slingshot:
    key(y)
    key(f8)
beam cannon:
    key(y)
    key(f8)
rig:
    key(y)
    key(f9)
avatar:
    key(y)
    key(f9)
mammoth:
    key(y)
    key(f10)
juggernaut:
    key(y)
    key(f11)
aircraft: key(u)
venom | orca:
    key(u)
    key(f1)
([vertigo] bomber) | hammerhead:
    key(u)
    key(f2)
firehawk:
    key(u)
    key(f3)
kodiak:
    key(u)
    key(f4)
cell mode: key(z)
repair mode: key(c)
game <user.arrow_key>:
    key(arrow_key)
    repeat(4)
fly <user.arrow_key>:
    key(arrow_key)
    repeat(4)
    sleep(50ms)
    key(arrow_key)
    repeat(4)
    sleep(50ms)
    key(arrow_key)
    repeat(4)
    sleep(50ms)
council | counsel | cancel:
    mouse_click(1)
    sleep(50ms)
    mouse_click(1)
centre:
    mouse_move(800, 500)
take [all]:
    mouse_move(110, 100)
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
select matching: key(w)
matching units: key(w)
stop: key(s)
scatter: key(ctrl-x)
assault move: key(f)
next harvester: key(n)
home: key(h)
[go] bookmark one: key(j)
[go] bookmark two: key(k)
[go] bookmark three: key(l)
[go] bookmark four: key(;)
set bookmark one: key(ctrl-j)
set bookmark two: key(ctrl-k)
set bookmark three: key(ctrl-l)
set bookmark four: key(ctrl-;)
reset camera: key(keypad_5)
zoom: key(keypad_8)
zoom out: key(keypad_2)
rotate left: key(keypad_4)
rotate right: key(keypad_6)
aggressive [stance]: key(alt-a)
defensive [stance]: key(alt-s)
hold ground: key(alt-d)
hold fire: key(alt-f)
status: key(o)
[toggle] heads up [display]: key(end)
sub tab: key(tab)
(next) | (previous) tab: key(ctrl-tab)
activate first: key(ctrl-a)
activate second: key(ctrl-s)
activate third: key(ctrl-d)
activate fourth: key(ctrl-f)
attack:
    key(a)
    sleep(50ms)
    mouse_click(0)
[power] slot first: key(ctrl-f1)
[power] slot second: key(ctrl-f2)
[power] slot third: key(ctrl-f3)
[power] slot forth: key(ctrl-f4)
[power] slot fifth: key(ctrl-f5)
[power] slot sixth: key(ctrl-f6)
[power] slot seventh: key(ctrl-f7)
[power] slot eighth: key(ctrl-f8)
[power] slot ninth: key(ctrl-f9)
[power] slot tenth: key(ctrl-f10)
[power] slot eleventh: key(ctrl-f11)
[power] slot twelfth: key(ctrl-f12)
[power] slot thirteenth: key(ctrl-1)
[power] slot fourteenth: key(ctrl-2)
[power] slot fifteenth: key(ctrl-3)
release keys:
    key(alt:up)
    key(ctrl:up)
    key(shift:up)
    key(d:up)
    key(a:up)
force attack: key(ctrl:down)
reverse: key(d:down)
attack move: key(a:down)
waypoint: key(alt:down)
planning: key(ctrl-z)
select [unit] first:
    key(q)
    key(f1)
select [unit] second:
    key(q)
    key(f2)
select [unit] third:
    key(q)
    key(f3)
select [unit] four:
    key(q)
    key(f4)
select [unit] fifth:
    key(q)
    key(f5)
select [unit] sixth:
    key(q)
    key(f6)
select [unit] seventh:
    key(q)
    key(f7)
select [unit] eighth:
    key(q)
    key(f8)
select [unit] ninth:
    key(q)
    key(f9)
select [unit] tenth:
    key(q)
    key(f10)
select [unit] eleventh:
    key(q)
    key(f11)
select [unit] twelfth:
    key(q)
    key(f12)
context: key(.)
power mode: key(x)
database | message: key(i)
objectives: key(o)
dot net attack: key(alt)
select <user.function_key>:
    key(function_key)
    sleep(50ms)
    key(function_key)
repair this:
    key(c)
    sleep(50ms)
    mouse_click(0)
    sleep(50ms)
    key(c)
select one:
    key(f1)
    sleep(50ms)
    key(f1)
select two:
    key(f2)
    sleep(50ms)
    key(f2)
select three:
    key(f3)
    sleep(50ms)
    key(f3)
select four:
    key(f4)
    sleep(50ms)
    key(f4)
select five:
    key(f5)
    sleep(50ms)
    key(f5)
select six:
    key(f6)
    sleep(50ms)
    key(f6)
select seven:
    key(f7)
    sleep(50ms)
    key(f7)
select eight:
    key(f8)
    sleep(50ms)
    key(f8)
select nine:
    key(f9)
    sleep(50ms)
    key(f9)
select ten:
    key(f10)
    sleep(50ms)
    key(f10)
hover first:
    mouse_move(40, 205)
hover second:
    mouse_move(40, 285)
hover third:
    mouse_move(40, 365)
hover fourth:
    mouse_move(40, 445)
hover fifth:
    mouse_move(40, 525)
hover sixth:
    mouse_move(40, 605)
hover seventh:
    mouse_move(40, 685)
hover eighth:
    mouse_move(40, 765)
hover ninth:
    mouse_move(40, 845)
hover tenth:
    mouse_move(110, 245)
hover eleventh:
    mouse_move(110, 325)
hover twelfth:
    mouse_move(110, 405)
hover thirteenth:
    mouse_move(110, 485)
hover fourteenth:
    mouse_move(110, 565)
hover fifteenth:
    mouse_move(110, 645)
hover weapon first:
    mouse_move(25, 30)
hover weapon second:
    mouse_move(85, 30)
hover weapon third:
    mouse_move(145, 30)
hover weapon fourth:
    mouse_move(205, 30)
hover build first:
    mouse_move(1420, 450)
hover build second:
    mouse_move(1500, 450)
hover build third:
    mouse_move(1590, 540)
hover build fourth:
    mouse_move(1420, 550)
hover build fifth:
    mouse_move(1510, 550)
hover build sixth:
    mouse_move(1590, 550)
hover build seventh:
    mouse_move(1420, 630)
hover build eighth:
    mouse_move(1510, 620)
hover build ninth:
    mouse_move(1590, 620)
hover build tenth:
    mouse_move(1420, 710)
hover build eleventh:
    mouse_move(1500, 710)
hover build twelfth:
    mouse_move(1580, 710)
slide right:
    key(right:down)
    key(left:up)
    key(up:up)
    key(down:up)
slide left:
    key(left:down)
    key(right:up)
    key(up:up)
    key(down:up)
slide up:
    key(up:down)
    key(right:up)
    key(left:up)
    key(down:up)
slide down:
    key(down:down)
    key(right:up)
    key(left:up)
    key(up:up)
slide stop:
    key(right:up)
    key(left:up)
    key(up:up)
    key(down:up)
