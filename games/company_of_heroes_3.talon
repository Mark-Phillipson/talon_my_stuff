os: windows
and app.exe: reliccoh3.exe
and win.title: /company of heroes 3|coh3/i
-
#Whilst playing the game the workaround to make this work is to make this file global until we can figure out why the app does not detect when the app is running.
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
game <user.arrow_key>:
    key(arrow_key)
    repeat(4)
fly <user.arrow_key>:
    key(arrow_key)
    repeat(14)
[tactical] map: key(m)
focus selection: key(')
take all: key(ctrl-a)
#[subselect] maximize: key(    #)# Basic commands
move back: key(down)
move left: key(left)
move right: key(right)
attack [move]:
    key(q)
    mouse_click(0)
stop:
    key(w)
reinforce:
    key(f:10)
fuel:
    key(b)
    sleep(20ms)
    key(f)
    sleep(20ms)
    mouse_click(0)
munition:
    key(b)
    sleep(20ms)
    key(m)
    sleep(20ms)
    mouse_click(0)
trench:
    key(b)
    sleep(20ms)
    key(t)
    sleep(20ms)
    mouse_click(0)
wall:
    key(b)
    sleep(20ms)
    key(w)
    sleep(20ms)
    mouse_click(0)
bofors:
    key(b)
    sleep(20ms)
    key(b)
    sleep(20ms)
    mouse_click(0)
mortars:
    key(b)
    sleep(20ms)
    key(r)
    sleep(20ms)
    mouse_click(0)
assembly:
    key(b)
    sleep(20ms)
    key(d)
    sleep(20ms)
    mouse_click(0)
headquarters:
    key(f1)
infantry:
    key(f2)
support:
    key(f3)
light [vehicles]:
    key(f4)
heavy [vehicles]:
    key(f5)
[set] rally point:
    key(ctrl-a)
    sleep(30ms)
    mouse_click(0)
toggle map:
    key(m)
go there:
    mouse_click(0)
    sleep(60ms)
    key(m)
[next] idle [soldier]:
    key(,)
lazy [vehicle]:
    key(.)
[all] vehicles:
    key(ctrl-/)
all idle: key(ctrl-alt-,)
all lazy: key(ctrl-alt-.)
events: key(n)
explode:
    key(ctrl-.)
    sleep(30ms)
    key(q)
    sleep(30ms)
    mouse_click(0)
hold shift:
    key(shift:down)
release shift:
    key(shift:up)
[all] soldiers:
    key(ctrl-,)
[all] invade:
    key(ctrl-,)
    sleep(30ms)
    key(q)
    sleep(30ms)
    mouse_click(0)
reset camera:
    key(backspace)
[game] pause:
    key(space)
game stop:
    key(space)
pause game:
    key(pause)
[game] menu:
    key(esc)
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
unit two: key(2)
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
go home: key(home)
[unit] one view:
    key(1)
    key(1)
[unit] two view:
    key(2)
    key(2)
[unit] three view:
    key(3)
    key(3)
[unit] four view:
    key(4)
    key(4)
[unit] five view:
    key(5)
    key(5)
[unit] six view:
    key(6)
    key(6)
[unit] seven view:
    key(7)
    key(7)
[unit] eight view:
    key(8)
    key(8)
[unit] nine view:
    key(9)
    key(9)
[unit] zero view:
    key(0)
    key(0)
slot first:
    position_x = user.query_mouse_position_x()
    position_y = user.query_mouse_position_y()
    mouse_move(522, 862)
    sleep(30ms)
    mouse_click(0)
    mouse_move(position_x, position_y)
slot second:
    position_x = user.query_mouse_position_x()
    position_y = user.query_mouse_position_y()
    mouse_move(602, 853)
    sleep(30ms)
    mouse_click(0)
    mouse_move(position_x, position_y)
slot third:
    position_x = user.query_mouse_position_x()
    position_y = user.query_mouse_position_y()
    mouse_move(680, 852)
    sleep(30ms)
    mouse_click(0)
    mouse_move(position_x, position_y)
slot fourth:
    position_x = user.query_mouse_position_x()
    position_y = user.query_mouse_position_y()
    mouse_move(766, 856)
    sleep(30ms)
    mouse_click(0)
    mouse_move(position_x, position_y)
slot fifth:
    position_x = user.query_mouse_position_x()
    position_y = user.query_mouse_position_y()
    mouse_move(852, 859)
    sleep(30ms)
    mouse_click(0)
    mouse_move(position_x, position_y)
zoom out: user.mouse_scroll_down()
zoom: user.mouse_scroll_up()
touch first:
    print ("clicking touch first")
    position_x = user.query_mouse_position_x()
    position_y = user.query_mouse_position_y()
    mouse_move(383, 997)
    sleep(30ms)
    mouse_click(0)
    mouse_move(position_x, position_y)
touch second:
    position_x = user.query_mouse_position_x()
    position_y = user.query_mouse_position_y()
    mouse_move(433, 997)
    sleep(30ms)
    mouse_click(0)
    mouse_move(position_x, position_y)
touch third:
    position_x = user.query_mouse_position_x()
    position_y = user.query_mouse_position_y()
    mouse_move(492, 997)
    sleep(30ms)
    mouse_click(0)
    mouse_move(position_x, position_y)
touch fourth:
    position_x = user.query_mouse_position_x()
    position_y = user.query_mouse_position_y()
    mouse_move(551, 997)
    sleep(30ms)
    mouse_click(0)
    mouse_move(position_x, position_y)
touch fifth:
    position_x = user.query_mouse_position_x()
    position_y = user.query_mouse_position_y()
    mouse_move(610, 997)
    sleep(30ms)
    mouse_click(0)
    mouse_move(position_x, position_y)
touch sixth:
    position_x = user.query_mouse_position_x()
    position_y = user.query_mouse_position_y()
    mouse_move(655, 997)
    sleep(30ms)
    mouse_click(0)
    mouse_move(position_x, position_y)
touch seventh:
    position_x = user.query_mouse_position_x()
    position_y = user.query_mouse_position_y()
    mouse_move(710, 997)
    sleep(30ms)
    mouse_click(0)
    mouse_move(position_x, position_y)
touch eighth:
    position_x = user.query_mouse_position_x()
    position_y = user.query_mouse_position_y()
    mouse_move(760, 997)
    sleep(30ms)
    mouse_click(0)
    mouse_move(position_x, position_y)
touch ninth:
    position_x = user.query_mouse_position_x()
    position_y = user.query_mouse_position_y()
    mouse_move(810, 997)
    sleep(30ms)
    mouse_click(0)
    mouse_move(position_x, position_y)
get stuff:
    mouse_move(380, 855)
    sleep(30ms)
    mouse_click(0)
vehicle first:
    position_x = user.query_mouse_position_x()
    position_y = user.query_mouse_position_y()
    mouse_move(440, 895)
    sleep(30ms)
    mouse_click(0)
    mouse_move(position_x, position_y)
vehicle second:
    position_x = user.query_mouse_position_x()
    position_y = user.query_mouse_position_y()
    mouse_move(500, 895)
    sleep(30ms)
    mouse_click(0)
    mouse_move(position_x, position_y)
vehicle third:
    position_x = user.query_mouse_position_x()
    position_y = user.query_mouse_position_y()
    mouse_move(560, 895)
    sleep(30ms)
    mouse_click(0)
    mouse_move(position_x, position_y)
vehicle fourth:
    position_x = user.query_mouse_position_x()
    position_y = user.query_mouse_position_y()
    mouse_move(620, 895)
    sleep(30ms)
    mouse_click(0)
    mouse_move(position_x, position_y)
vehicle fifth:
    position_x = user.query_mouse_position_x()
    position_y = user.query_mouse_position_y()
    mouse_move(680, 895)
    sleep(30ms)
    mouse_click(0)
    mouse_move(position_x, position_y)
vehicle sixth:
    position_x = user.query_mouse_position_x()
    position_y = user.query_mouse_position_y()
    mouse_move(740, 895)
    sleep(30ms)
    mouse_click(0)
    mouse_move(position_x, position_y)
vehicle seventh:
    position_x = user.query_mouse_position_x()
    position_y = user.query_mouse_position_y()
    mouse_move(1695, 230)
    sleep(30ms)
    mouse_click(0)
    mouse_move(position_x, position_y)
emplacement first:
    position_x = user.query_mouse_position_x()
    position_y = user.query_mouse_position_y()
    mouse_move(1885, 345)
    sleep(30ms)
    mouse_click(0)
    mouse_move(position_x, position_y)
emplacement second:
    position_x = user.query_mouse_position_x()
    position_y = user.query_mouse_position_y()
    mouse_move(1835, 350)
    sleep(30ms)
    mouse_click(0)
    mouse_move(position_x, position_y)
emplacement third:
    position_x = user.query_mouse_position_x()
    position_y = user.query_mouse_position_y()
    mouse_move(1780, 340)
    sleep(30ms)
    mouse_click(0)
    mouse_move(position_x, position_y)
emplacement fourth:
    position_x = user.query_mouse_position_x()
    position_y = user.query_mouse_position_y()
    mouse_move(1720, 340)
    sleep(30ms)
    mouse_click(0)
    mouse_move(position_x, position_y)
emplacement fifth:
    position_x = user.query_mouse_position_x()
    position_y = user.query_mouse_position_y()
    mouse_move(1670, 348)
    sleep(30ms)
    mouse_click(0)
    mouse_move(position_x, position_y)
emplacement sixth:
    position_x = user.query_mouse_position_x()
    position_y = user.query_mouse_position_y()
    mouse_move(1620, 350)
    sleep(30ms)
    mouse_click(0)
    mouse_move(position_x, position_y)
emplacement seventh:
    position_x = user.query_mouse_position_x()
    position_y = user.query_mouse_position_y()
    mouse_move(1570, 340)
    sleep(30ms)
    mouse_click(0)
    mouse_move(position_x, position_y)
emplacement eighth:
    position_x = user.query_mouse_position_x()
    position_y = user.query_mouse_position_y()
    mouse_move(1520, 340)
    sleep(30ms)
    mouse_click(0)
    mouse_move(position_x, position_y)
emplacement ninth:
    position_x = user.query_mouse_position_x()
    position_y = user.query_mouse_position_y()
    mouse_move(1470, 340)
    sleep(30ms)
    mouse_click(0)
    mouse_move(position_x, position_y)
group one:
    key(shift-1)
    sleep(30ms)
    key(ctrl-1)
group two:
    key(shift-2)
    sleep(30ms)
    key(ctrl-2)
group three:
    key(shift-3)
    sleep(30ms)
    key(ctrl-3)
group four:
    key(shift-4)
    sleep(30ms)
    key(ctrl-4)
group five:
    key(shift-5)
    sleep(30ms)
    key(ctrl-5)
group six:
    key(shift-6)
    sleep(30ms)
    key(ctrl-6)
group seven:
    key(shift-7)
    sleep(30ms)
    key(ctrl-7)
group eight:
    key(shift-8)
    sleep(30ms)
    key(ctrl-8)
group nine:
    key(shift-9)
    sleep(30ms)
    key(ctrl-9)
group zero:
    key(shift-0)
    sleep(30ms)
    key(ctrl-0)
kill tank:
    key(7)
    sleep(30ms)
    key(q)
    sleep(30ms)
    mouse_click(0)
reverse:
    key(r)
    sleep(30ms)
    mouse_click(0)
retreat | trap:
    key(r)
    sleep(30ms)
    mouse_click(0)
antitank:
    key(7)
[get] gammon [bomb]:
    position_x = user.query_mouse_position_x()
    position_y = user.query_mouse_position_y()
    mouse_move(1790, 1025)
    sleep(30ms)
    mouse_click(0)
    sleep(30ms)
    mouse_move(position_x, position_y)
one attack:
    key(1)
    sleep(30ms)
    key(a)
    sleep(30ms)
    mouse_click(0)
two attack:
    key(2)
    sleep(30ms)
    key(a)
    sleep(30ms)
    mouse_click(0)
three attack:
    key(3)
    sleep(30ms)
    key(a)
    sleep(30ms)
    mouse_click(0)
four attack:
    key(4)
    sleep(30ms)
    key(a)
    sleep(30ms)
    mouse_click(0)
five attack:
    key(5)
    sleep(30ms)
    key(a)
    sleep(30ms)
    mouse_click(0)
six attack:
    key(6)
    sleep(30ms)
    key(a)
    sleep(30ms)
    mouse_click(0)
seven attack:
    key(7)
    sleep(30ms)
    key(a)
    sleep(30ms)
    mouse_click(0)
eight attack:
    key(8)
    sleep(30ms)
    key(a)
    sleep(30ms)
    mouse_click(0)
nine attack:
    key(9)
    sleep(30ms)
    key(a)
    sleep(30ms)
    mouse_click(0)
zero attack:
    key(0)
    sleep(30ms)
    key(a)
    sleep(30ms)
    mouse_click(0)
rotate small:
    key(alt:down)
    position_x = user.query_mouse_position_x()
    position_y = user.query_mouse_position_y()
    adjustment = 100
    sleep(300ms)
    mouse_move(position_x - adjustment, position_y)
    sleep(300ms)
    key(alt:up)
rotate right:
    key(alt:down)
    position_x = user.query_mouse_position_x()
    position_y = user.query_mouse_position_y()
    adjustment = 8000
    sleep(300ms)
    mouse_move(position_x - adjustment, position_y)
    sleep(300ms)
    key(alt:up)
rotate left:
    key(alt:down)
    position_x = user.query_mouse_position_x()
    position_y = user.query_mouse_position_y()
    adjustment = 8000
    sleep(300ms)
    mouse_move(position_x + adjustment, position_y)
    sleep(300ms)
    key(alt:up)
six o'clock:
    user.mouse_drag(1)
    sleep(100ms)
    position_x = user.query_mouse_position_x()
    position_y = user.query_mouse_position_y()
    mouse_move(position_x, position_y + 300)
    sleep(900ms)
    user.mouse_drag_end()
twelve o'clock:
    user.mouse_drag(1)
    sleep(100ms)
    position_x = user.query_mouse_position_x()
    position_y = user.query_mouse_position_y()
    mouse_move(position_x, position_y - 300)
    sleep(700ms)
    user.mouse_drag_end()
nine o'clock:
    user.mouse_drag(1)
    sleep(100ms)
    position_x = user.query_mouse_position_x()
    position_y = user.query_mouse_position_y()
    mouse_move(position_x - 300, position_y)
    sleep(700ms)
    user.mouse_drag_end()
three o'clock:
    sleep(100ms)
    user.mouse_drag(1)
    sleep(100ms)
    position_x = user.query_mouse_position_x()
    position_y = user.query_mouse_position_y()
    mouse_move(position_x + 300, position_y)
    sleep(700ms)
    user.mouse_drag_end()
one o'clock:
    user.mouse_drag(1)
    sleep(100ms)
    position_x = user.query_mouse_position_x()
    position_y = user.query_mouse_position_y()
    mouse_move(position_x + 66, position_y - 132)
    sleep(700ms)
    user.mouse_drag_end()
two o'clock:
    user.mouse_drag(1)
    sleep(100ms)
    position_x = user.query_mouse_position_x()
    position_y = user.query_mouse_position_y()
    mouse_move(position_x + 132, position_y - 66)
    sleep(700ms)
    user.mouse_drag_end()
four o'clock:
    user.mouse_drag(1)
    sleep(100ms)
    position_x = user.query_mouse_position_x()
    position_y = user.query_mouse_position_y()
    mouse_move(position_x + 132, position_y + 66)
    sleep(700ms)
    user.mouse_drag_end()
five o'clock:
    user.mouse_drag(1)
    sleep(100ms)
    position_x = user.query_mouse_position_x()
    position_y = user.query_mouse_position_y()
    mouse_move(position_x + 132, position_y + 66)
    sleep(700ms)
    user.mouse_drag_end()
seven o'clock:
    user.mouse_drag(1)
    sleep(100ms)
    position_x = user.query_mouse_position_x()
    position_y = user.query_mouse_position_y()
    mouse_move(position_x - 66, position_y + 132)
    sleep(700ms)
    user.mouse_drag_end()
eight o'clock:
    user.mouse_drag(1)
    sleep(100ms)
    position_x = user.query_mouse_position_x()
    position_y = user.query_mouse_position_y()
    mouse_move(position_x - 132, position_y + 66)
    sleep(700ms)
    user.mouse_drag_end()
ten o'clock:
    user.mouse_drag(1)
    sleep(100ms)
    position_x = user.query_mouse_position_x()
    position_y = user.query_mouse_position_y()
    mouse_move(position_x - 132, position_y - 66)
    sleep(700ms)
    user.mouse_drag_end()
eleven o'clock:
    user.mouse_drag(1)
    sleep(100ms)
    position_x = user.query_mouse_position_x()
    position_y = user.query_mouse_position_y()
    mouse_move(position_x - 66, position_y - 132)
    sleep(700ms)
    user.mouse_drag_end()
one back:
    key(1)
    sleep(30ms)
    key(u)
    sleep(30ms)
    mouse_click(0)
two back:
    key(2)
    sleep(30ms)
    key(u)
    sleep(30ms)
    mouse_click(0)
three back:
    key(3)
    sleep(30ms)
    key(u)
    sleep(30ms)
    mouse_click(0)
four back:
    key(4)
    sleep(30ms)
    key(u)
    sleep(30ms)
    mouse_click(0)
five back:
    key(5)
    sleep(30ms)
    key(u)
    sleep(30ms)
    mouse_click(0)
six back:
    key(6)
    sleep(30ms)
    key(u)
    sleep(30ms)
    mouse_click(0)
seven back:
    key(7)
    sleep(30ms)
    key(u)
    sleep(30ms)
    mouse_click(0)
eight back:
    key(8)
    sleep(30ms)
    key(u)
    sleep(30ms)
    mouse_click(0)
nine back:
    key(9)
    sleep(30ms)
    key(u)
    sleep(30ms)
    mouse_click(0)
zero back:
    key(0)
    sleep(30ms)
    key(u)
    sleep(30ms)
    mouse_click(0)
ante run:
    key(home)
    sleep(30ms)
    key(7)
    sleep(30ms)
    key(u)
    sleep(30ms)
    mouse_click(0)
battle group first: key(ctrl-f1)
battle group second: key(ctrl-f2)
battle group third: key(ctrl-f3)
battle group fourth: key(ctrl-f4)
battle group fifth: key(ctrl-f5)
battle group sixth: key(ctrl-f6)
[open] menu:
    user.mouse_helper_position_save()
    user.mouse_helper_move_image_relative("2026-02-17_12.42.32.786730.png", 0)
    sleep(0.05)
    mouse_click(0)
    sleep(0.05)
    user.mouse_helper_position_restore()
close menu:
    user.mouse_helper_position_save()
    user.mouse_helper_move_image_relative("2026-02-17_12.45.13.957469.png", 0)
    sleep(0.05)
    mouse_click(0)
    sleep(0.05)
    user.mouse_helper_position_restore()
select menu:
    user.mouse_helper_position_save()
    user.mouse_helper_move_image_relative("2026-02-17_12.47.34.178364.png", 0)
    sleep(0.05)
    mouse_click(0)
    sleep(0.05)
    user.mouse_helper_position_restore()
back menu:
    user.mouse_helper_position_save()
    user.mouse_helper_move_image_relative("2026-02-17_12.50.31.394351.png", 0)
    sleep(0.05)
    mouse_click(0)
    sleep(0.05)
    user.mouse_helper_position_restore()
confirm menu:
    user.mouse_helper_position_save()
    user.mouse_helper_move_image_relative("2026-02-17_12.52.47.189665.png", 0)
    sleep(0.05)
    mouse_click(0)
    sleep(0.05)
    user.mouse_helper_position_restore()
start menu:
    user.mouse_helper_position_save()
    user.mouse_helper_move_image_relative("2026-02-17_12.54.06.533252.png", 0)
    sleep(0.05)
    mouse_click(0)
    sleep(0.05)
    user.mouse_helper_position_restore()
continue menu:
    user.mouse_helper_position_save()
    user.mouse_helper_move_image_relative("2026-02-17_13.10.02.371115.png", 0)
    sleep(0.05)
    mouse_click(0)
    sleep(0.05)
    user.mouse_helper_position_restore()
click yes:
    user.mouse_helper_position_save()
    user.mouse_helper_move_image_relative("2026-02-17_13.11.17.879670.png", 0)
    sleep(0.05)
    mouse_click(0)
    sleep(0.05)
    user.mouse_helper_position_restore()
click no:
    user.mouse_helper_position_save()
    user.mouse_helper_move_image_relative("2026-02-17_13.12.36.492118.png", 0)
    sleep(0.05)
    mouse_click(0)
    sleep(0.05)
    user.mouse_helper_position_restore()
understood:
    user.mouse_helper_position_save()
    user.mouse_helper_move_image_relative("2026-02-17_13.18.56.566783.png", 0)
    sleep(0.05)
    mouse_click(0)
    sleep(0.05)
    user.mouse_helper_position_restore()
