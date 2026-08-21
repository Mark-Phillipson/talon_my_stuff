os: windows
and app.name: IronHarvest.exe
os: windows
and app.exe: ironharvest.exe
-

settings():
    user.mouse_enable_pop_click = 0
    key_hold = 32
    # Zoom Mouse Options
    tracking.zoom_live = true
    tracking.zoom_height = 300
    tracking.zoom_width = 300
    tracking.zoom_scale = 4

game <user.arrow_key>:
    key(arrow_key)
    repeat(4)
fly <user.arrow_key>:
    key(arrow_key)
    repeat(14)
take [all]:
    mouse_move(60, 10)
    sleep(30ms)
    user.mouse_drag(0)
    sleep(30ms)
    mouse_move(1600, 120)
    sleep(30ms)
    mouse_move(1600, 670)
    sleep(30ms)
    mouse_click(0)

# Basic commands
move forward: key(up)
move back: key(down)
move left: key(left)
move right: key(right)
attack [move]:
    key(y)
    mouse_click(0)
stop: key(i)
headquarters: key(f1)
barracks: key(f2)
workshop: key(f3)
camera left: key(q)
camera right: key(e)
retreat: key(r)
attack ground: key(u)
invade:
    key(f4)
    sleep(100ms)
    key(f4)
    sleep(100ms)
    mouse_click(1)
reverse:
    key(c)
    sleep(100ms)
    mouse_click(0)
[unit] one view:
    key(1)
    sleep(100ms)
    key(1)
[unit] two view:
    key(2)
    sleep(100ms)
    key(2)
[unit] three view:
    key(3)
    sleep(100ms)
    key(3)
[unit] four view:
    key(4)
    sleep(100ms)
    key(4)
[unit] five view:
    key(5)
    sleep(100ms)
    key(5)
[unit] six view:
    key(6)
    sleep(100ms)
    key(6)
[unit] seven view:
    key(7)
    sleep(100ms)
    key(7)
[unit] eight view:
    key(8)
    sleep(100ms)
    key(8)
[unit] nine view:
    key(9)
    sleep(100ms)
    key(9)
[unit] zero view:
    key(0)
    sleep(100ms)
    key(0)
save game: key(f5)
load game: key(f9)
hold shift: key(shift:down)
release shift: key(shift:up)
