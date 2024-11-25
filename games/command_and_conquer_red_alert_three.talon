app: ra3ep1_1.0.game
-
settings():
    user.mode_indicator_show = 0
    user.mouse_enable_pop_click = 0
    key_hold = 50
<user.screen_step_two> <user.screen_step_vertical> move: key(control)
<user.screen_step_two_commandconquer> <user.screen_step_vertical>:
    mouse_move(screen_step_two_commandconquer, screen_step_vertical)
formation:
    key(f)
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
    key(f3)
barracks:
    key(e)
    key(f2)
war factory:
    key(e)
    key(f4)
(seaport) | (dock):
    key(e)
    key(f5)
(air tower) | airfield:
    key(e)
    key(f6)
defense bureau:
    key(e)
    key(f7)
upgrade:
    key(e)
    key(f8)
support: key(r)
[fortress] wall:
    key(r)
    key(f1)
turret:
    key(r)
    key(f2)
tower:
    key(r)
    key(f3)
chromosphere:
    key(r)
    key(f4)
[proton] collider:
    key(r)
    key(f5)
infantry: key(t)
attack dog:
    key(t)
    key(f1)
peacekeeper:
    key(t)
    key(f2)
javelin | rocket:
    key(t)
    key(f3)
engineer:
    key(t)
    key(f4)
spy:
    key(t)
    key(f5)
legionnaire:
    key(t)
    key(f6)
tonya:
    key(t)
    key(f7)
vehicles: key(y)
prospector:
    key(y)
    key(f1)
vehicle riptide:
    key(y)
    key(f2)
multi gunnar:
    key(y)
    key(f3)
[guardian] tank:
    key(y)
    key(f4)
cannon:
    key(y)
    key(f5)
mirage tank:
    key(y)
    key(f6)
pacifier:
    key(y)
    key(f7)
future tank:
    key(y)
    key(f8)
vehicle mvc:
    key(y)
    key(f9)
aircraft: key(u)
vindicator:
    key(u)
    key(f1)
[apollo] fighter:
    key(u)
    key(f2)
helicopter:
    key(u)
    key(f3)
bomber:
    key(u)
    key(f4)
gunship:
    key(u)
    key(f5)
navy: key(i)
prospector:
    key(i)
    key(f1)
dolphin:
    key(i)
    key(f2)
riptide:
    key(i)
    key(f3)
hydrofoil:
    key(i)
    key(f4)
destroyer:
    key(i)
    key(f5)
carrier:
    key(i)
    key(f6)
mvc:
    key(i)
    key(f7)
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
everything: key(e)
next unit: key(n)
select matching: key(w)
matching units: key(w)
stop: key(s)
scatter: key(x)
assault move: key(f)
next harvester: key(n)
home: key(h)
center: key(home)
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
guard [stance]: key(g)
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
[power] slot first: key(alt-q)
[power] slot second: key(alt-w)
[power] slot third: key(alt-e)
[power] slot forth: key(alt-r)
[power] slot fifth: key(alt-t)
[power] slot sixth: key(alt-y)
[power] slot seventh: key(alt-u)
[power] slot eighth: key(alt-i)
[power] slot ninth: key(alt-o)
[power] slot tenth: key(alt-p)
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
special: key(`)
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
