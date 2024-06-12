app: suddenstrike4.exe
-
settings():
    user.mode_indicator_show = 0
    # Choose how pop click should work in 'control mouse' mode
    # 0 = off
    # 1 = on with eyetracker but not zoom mouse mode
    # 2 = on but not with zoom mouse mode
    user.mouse_enable_pop_click = 0
    key_hold = 50
expand:
    key(shift:down)
    sleep(100ms)
    mouse_click(0)
    sleep(100ms)
    key(shift:up)
take step:
    key(shift:down)
    sleep(100ms)
    mouse_click(1)
    sleep(100ms)
    key(shift:up)
antitank grenade:
    key(x)
    mouse_click(0)
attack:
    key(a)
    mouse_click(0)
attack ground:
    key(g)
    mouse_click(0)
ground attack:
    key(f2)
    sleep(100ms)
    mouse_click(0)
build bridge: key(x)
camera reset: key(k)
diffuse mine:
    key(c)
    sleep(100ms)
    mouse_click(0)
fire at will: key(q)
(follow | focus) one:
    key(1)
    sleep(100ms)
    key(1)
(follow | focus) two:
    key(2)
    sleep(100ms)
    key(2)
(follow | focus) three:
    key(3)
    sleep(100ms)
    key(3)
(follow | focus) four:
    key(4)
    sleep(100ms)
    key(4)
(follow | focus) five:
    key(5)
    sleep(100ms)
    key(5)
(follow | focus) six:
    key(6)
    sleep(100ms)
    key(6)
(follow | focus) seven:
    key(7)
    sleep(100ms)
    key(7)
(follow | focus) eight:
    key(8)
    sleep(100ms)
    key(8)
(follow | focus) nine:
    key(9)
    sleep(100ms)
    key(9)
(follow | focus) zero:
    key(0)
    sleep(100ms)
    key(0)
go back:
    key(w)
    sleep(100ms)
    mouse_click(0)
grenade:
    key(v)
    mouse_click(0)
grenade <number_small>:
    key(v)
    repeat(number_small-1)
heavy bomber:
    key(f4)
    sleep(100ms)
    mouse_click(0)
six o'clock:
    mouse_click(1)
    sleep(100ms)
    user.mouse_drag(1)
    sleep(100ms)
    position_x = user.query_mouse_position_x()
    position_y = user.query_mouse_position_y()
    mouse_move(position_x, position_y + 200)
    sleep(700ms)
    mouse_click(1)
twelve o'clock:
    mouse_click(1)
    sleep(100ms)
    user.mouse_drag(1)
    sleep(100ms)
    position_x = user.query_mouse_position_x()
    position_y = user.query_mouse_position_y()
    mouse_move(position_x, position_y - 200)
    sleep(700ms)
    mouse_click(1)
nine o'clock:
    mouse_click(1)
    sleep(100ms)
    user.mouse_drag(1)
    sleep(100ms)
    position_x = user.query_mouse_position_x()
    position_y = user.query_mouse_position_y()
    mouse_move(position_x - 200, position_y)
    sleep(700ms)
    mouse_click(1)
three o'clock:
    mouse_click(1)
    sleep(100ms)
    user.mouse_drag(1)
    sleep(100ms)
    position_x = user.query_mouse_position_x()
    position_y = user.query_mouse_position_y()
    mouse_move(position_x + 200, position_y)
    sleep(700ms)
    mouse_click(1)
one o'clock:
    mouse_click(1)
    sleep(100ms)
    user.mouse_drag(1)
    sleep(100ms)
    position_x = user.query_mouse_position_x()
    position_y = user.query_mouse_position_y()
    mouse_move(position_x + 66, position_y - 132)
    sleep(700ms)
    mouse_click(1)
two o'clock:
    mouse_click(1)
    sleep(100ms)
    user.mouse_drag(1)
    sleep(100ms)
    position_x = user.query_mouse_position_x()
    position_y = user.query_mouse_position_y()
    mouse_move(position_x + 132, position_y - 66)
    sleep(700ms)
    mouse_click(1)
four o'clock:
    mouse_click(1)
    sleep(100ms)
    user.mouse_drag(1)
    sleep(100ms)
    position_x = user.query_mouse_position_x()
    position_y = user.query_mouse_position_y()
    mouse_move(position_x + 132, position_y + 66)
    sleep(700ms)
    mouse_click(1)
five o'clock:
    mouse_click(1)
    sleep(100ms)
    user.mouse_drag(1)
    sleep(100ms)
    position_x = user.query_mouse_position_x()
    position_y = user.query_mouse_position_y()
    mouse_move(position_x + 132, position_y + 66)
    sleep(700ms)
    mouse_click(1)
seven o'clock:
    mouse_click(1)
    sleep(100ms)
    user.mouse_drag(1)
    sleep(100ms)
    position_x = user.query_mouse_position_x()
    position_y = user.query_mouse_position_y()
    mouse_move(position_x - 66, position_y + 132)
    sleep(700ms)
    mouse_click(1)
eight o'clock:
    mouse_click(1)
    sleep(100ms)
    user.mouse_drag(1)
    sleep(100ms)
    position_x = user.query_mouse_position_x()
    position_y = user.query_mouse_position_y()
    mouse_move(position_x - 132, position_y + 66)
    sleep(700ms)
    mouse_click(1)
ten o'clock:
    mouse_click(1)
    sleep(100ms)
    user.mouse_drag(1)
    sleep(100ms)
    position_x = user.query_mouse_position_x()
    position_y = user.query_mouse_position_y()
    mouse_move(position_x - 132, position_y - 66)
    sleep(700ms)
    mouse_click(1)
eleven o'clock:
    mouse_click(1)
    sleep(100ms)
    user.mouse_drag(1)
    sleep(100ms)
    position_x = user.query_mouse_position_x()
    position_y = user.query_mouse_position_y()
    mouse_move(position_x - 66, position_y - 132)
    sleep(700ms)
    mouse_click(1)
improved armour:
    key(v)
    sleep(100ms)
    mouse_click(0)
lay mine:
    key(x)
    sleep(100ms)
    mouse_click(0)
(laydown) | (standup): key(w)
objectives:
    mouse_move(1370, 150)
    sleep(100ms)
    mouse_click(0)
open hatch: key(c)
paratroops:
    key(f5)
    sleep(100ms)
    mouse_click(0)
pause: key(space)
spacy: key(space:6)
space: key(space)
<user.screen_step_screen_one> <user.screen_step_screen_one>:
    mouse_move(screen_step_screen_one_1, screen_step_screen_one_2)
    #mouse_click(1)
(fortify) | (sandbags): key(f)
repair: key(y)
resupply: key(h)
right click: mouse_click(1)
rotate right:
    key(o)
    sleep(100ms)
    key(o)
    sleep(100ms)
    key(o)
    sleep(100ms)
    key(o)
    sleep(100ms)
    key(o)
rotate left:
    key(i)
    sleep(100ms)
    key(i)
    sleep(100ms)
    key(i)
    sleep(100ms)
    key(i)
    sleep(100ms)
    key(i)
scatter: key(f)
squad <number_small>: key(number_small)
stand up: key(w)
stop: key(s)
unload: key(,)
recon:
    key(f3)
    sleep(100ms)
    mouse_click(0)
reverse:
    key(w)
    sleep(100ms)
    mouse_click(0)
rotate: key(r)
save game: key(ctrl-f7)
take all:
    mouse_move(110, 10)
    sleep(100ms)
    user.mouse_drag(0)
    sleep(100ms)
    mouse_move(1650, 250)
    sleep(100ms)
    mouse_move(1650, 979)
    sleep(100ms)
    mouse_click(0)
take one:
    mouse_move(110, 10)
    sleep(100ms)
    user.mouse_drag(0)
    sleep(100ms)
    mouse_move(1650, 250)
    sleep(100ms)
    mouse_move(1650, 979)
    sleep(100ms)
    mouse_click(0)
    sleep(800ms)
    key(ctrl-1)
take two:
    mouse_move(110, 10)
    sleep(100ms)
    user.mouse_drag(0)
    sleep(100ms)
    mouse_move(1650, 250)
    sleep(100ms)
    mouse_move(1650, 979)
    sleep(100ms)
    mouse_click(0)
    sleep(800ms)
    key(ctrl-2)
take three:
    mouse_move(110, 10)
    sleep(100ms)
    user.mouse_drag(0)
    sleep(100ms)
    mouse_move(1650, 250)
    sleep(100ms)
    mouse_move(1650, 979)
    sleep(100ms)
    mouse_click(0)
    sleep(800ms)
    key(ctrl-3)
take four:
    mouse_move(110, 10)
    sleep(100ms)
    user.mouse_drag(0)
    sleep(100ms)
    mouse_move(1650, 250)
    sleep(100ms)
    mouse_move(1650, 979)
    sleep(100ms)
    mouse_click(0)
    sleep(800ms)
    key(ctrl-4)
take five:
    mouse_move(110, 10)
    sleep(100ms)
    user.mouse_drag(0)
    sleep(100ms)
    mouse_move(1650, 250)
    sleep(100ms)
    mouse_move(1650, 979)
    sleep(100ms)
    mouse_click(0)
    sleep(800ms)
    key(ctrl-5)
take six:
    mouse_move(110, 10)
    sleep(100ms)
    user.mouse_drag(0)
    sleep(100ms)
    mouse_move(1650, 250)
    sleep(100ms)
    mouse_move(1650, 979)
    sleep(100ms)
    mouse_click(0)
    sleep(800ms)
    key(ctrl-6)
take seven:
    mouse_move(110, 10)
    sleep(100ms)
    user.mouse_drag(0)
    sleep(100ms)
    mouse_move(1650, 250)
    sleep(100ms)
    mouse_move(1650, 979)
    sleep(100ms)
    mouse_click(0)
    sleep(800ms)
    key(ctrl-7)
take eight:
    mouse_move(110, 10)
    sleep(100ms)
    user.mouse_drag(0)
    sleep(100ms)
    mouse_move(1650, 250)
    sleep(100ms)
    mouse_move(1650, 979)
    sleep(100ms)
    mouse_click(0)
    sleep(800ms)
    key(ctrl-8)
take nine:
    mouse_move(110, 10)
    sleep(100ms)
    user.mouse_drag(0)
    sleep(100ms)
    mouse_move(1650, 250)
    sleep(100ms)
    mouse_move(1650, 979)
    sleep(100ms)
    mouse_click(0)
    sleep(800ms)
    key(ctrl-9)
take zero:
    mouse_move(110, 10)
    sleep(100ms)
    user.mouse_drag(0)
    sleep(100ms)
    mouse_move(1650, 250)
    sleep(100ms)
    mouse_move(1650, 979)
    sleep(100ms)
    mouse_click(0)
    sleep(800ms)
    key(ctrl-0)
select middle:
    mouse_move(550, 350)
    sleep(100ms)
    user.mouse_drag(0)
    sleep(100ms)
    mouse_move(1650, 250)
    sleep(100ms)
    mouse_move(1100, 650)
    sleep(100ms)
    mouse_click(0)
select top left:
    mouse_move(110, 10)
    sleep(100ms)
    user.mouse_drag(0)
    sleep(100ms)
    mouse_move(820, 250)
    sleep(100ms)
    mouse_move(820, 450)
    sleep(100ms)
    mouse_click(0)
select top right:
    mouse_move(1650, 10)
    sleep(100ms)
    user.mouse_drag(0)
    sleep(100ms)
    mouse_move(820, 250)
    sleep(100ms)
    mouse_move(820, 450)
    sleep(100ms)
    mouse_click(0)
select bottom left:
    mouse_move(20, 1030)
    sleep(100ms)
    user.mouse_drag(0)
    sleep(100ms)
    mouse_move(820, 250)
    sleep(100ms)
    mouse_move(750, 500)
    sleep(100ms)
    mouse_click(0)
select bottom right:
    mouse_move(1650, 1030)
    sleep(100ms)
    user.mouse_drag(0)
    sleep(100ms)
    mouse_move(820, 250)
    sleep(100ms)
    mouse_move(820, 450)
    sleep(100ms)
    mouse_click(0)
smoke:
    key(h)
    sleep(100ms)
    mouse_click(0)
zoom out:
    user.mouse_scroll_down(5000)
    user.mouse_scroll_down(5000)
    user.mouse_scroll_down(5000)
    user.mouse_scroll_down(5000)
    user.mouse_scroll_down(5000)
    user.mouse_scroll_down(5000)
zoom in:
    user.mouse_scroll_up(5000)
    user.mouse_scroll_up(5000)
    user.mouse_scroll_up(5000)
    user.mouse_scroll_up(5000)
    user.mouse_scroll_up(5000)
    user.mouse_scroll_up(5000)
game <user.arrow_key>:
    key(arrow_key)
    repeat(8)
fly <user.arrow_key>:
    key(arrow_key)
    repeat(7)
    sleep(50ms)
    key(arrow_key)
    repeat(7)
    sleep(50ms)
    key(arrow_key)
    repeat(7)
    sleep(50ms)
select box:
    position_x = user.query_mouse_position_x()
    position_y = user.query_mouse_position_y()
    user.mouse_drag(0)
    sleep(100ms)
    mouse_move(position_x + 500, position_y + 500)
    sleep(500ms)
    mouse_click(0)
select box above:
    position_x = user.query_mouse_position_x()
    position_y = user.query_mouse_position_y()
    user.mouse_drag(0)
    sleep(100ms)
    mouse_move(position_x - 500, position_y - 500)
    sleep(500ms)
    mouse_click(0)
take unit one:
    mouse_move(530, 920)
    sleep(100ms)
    mouse_click(0)
take unit two:
    mouse_move(530+60, 920)
    sleep(100ms)
    mouse_click(0)
take unit three:
    mouse_move(530+120, 920)
    sleep(100ms)
    mouse_click(0)
take unit four:
    mouse_move(530+180, 920)
    sleep(100ms)
    mouse_click(0)
take unit five:
    mouse_move(530+240, 920)
    sleep(100ms)
    mouse_click(0)
take unit six:
    mouse_move(530+300, 920)
    sleep(100ms)
    mouse_click(0)
take unit seven:
    mouse_move(530+360, 920)
    sleep(100ms)
    mouse_click(0)
take unit eight:
    mouse_move(530+420, 920)
    sleep(100ms)
    mouse_click(0)
take unit nine:
    mouse_move(530+490, 920)
    sleep(100ms)
    mouse_click(0)
take unit ten:
    mouse_move(530+550, 920)
    sleep(100ms)
    mouse_click(0)
take unit eleven:
    mouse_move(530+610, 920)
    sleep(100ms)
    mouse_click(0)
take unit twelve:
    mouse_move(530, 980)
    sleep(100ms)
    mouse_click(0)
take unit thirteen:
    mouse_move(530+62, 980)
    sleep(100ms)
    mouse_click(0)
take unit fourteen:
    mouse_move(530+124, 980)
    sleep(100ms)
    mouse_click(0)
take unit fifteen:
    mouse_move(530+186, 980)
    sleep(100ms)
    mouse_click(0)
take unit sixteen:
    mouse_move(530+248, 980)
    sleep(100ms)
    mouse_click(0)
take unit seventeen:
    mouse_move(530+310, 980)
    sleep(100ms)
    mouse_click(0)
take unit eighteen:
    mouse_move(530+372, 980)
    sleep(100ms)
    mouse_click(0)
take unit nineteen:
    mouse_move(530+434, 980)
    sleep(100ms)
    mouse_click(0)
take unit twenty:
    mouse_move(530+496, 980)
    sleep(100ms)
    mouse_click(0)
take unit twenty one:
    mouse_move(530+558, 980)
    sleep(100ms)
    mouse_click(0)
take unit twenty two:
    mouse_move(530+620, 980)
    sleep(100ms)
    mouse_click(0)
go west:
    mouse_move(350, 500)
    mouse_click(1)
    sleep(100ms)
    user.mouse_drag(1)
    sleep(100ms)
    position_x = user.query_mouse_position_x()
    position_y = user.query_mouse_position_y()
    mouse_move(position_x - 200, position_y)
    sleep(700ms)
    mouse_click(1)
go east:
    mouse_move(1200, 550)
    mouse_click(1)
    sleep(100ms)
    user.mouse_drag(1)
    sleep(100ms)
    position_x = user.query_mouse_position_x()
    position_y = user.query_mouse_position_y()
    mouse_move(position_x + 200, position_y)
    sleep(700ms)
    mouse_click(1)
go north:
    mouse_move(800, 400)
    mouse_click(1)
    sleep(100ms)
    user.mouse_drag(1)
    sleep(100ms)
    position_x = user.query_mouse_position_x()
    position_y = user.query_mouse_position_y()
    mouse_move(position_x, position_y - 200)
    sleep(700ms)
    mouse_click(1)
go south:
    mouse_move(800, 800)
    mouse_click(1)
    sleep(100ms)
    user.mouse_drag(1)
    sleep(100ms)
    position_x = user.query_mouse_position_x()
    position_y = user.query_mouse_position_y()
    mouse_move(position_x, position_y + 200)
    sleep(700ms)
    mouse_click(1)
go northeast:
    mouse_move(1000, 400)
    mouse_click(1)
    sleep(100ms)
    user.mouse_drag(1)
    sleep(100ms)
    position_x = user.query_mouse_position_x()
    position_y = user.query_mouse_position_y()
    mouse_move(position_x + 200, position_y - 200)
    sleep(700ms)
    mouse_click(1)
go northwest:
    mouse_move(600, 400)
    mouse_click(1)
    sleep(100ms)
    user.mouse_drag(1)
    sleep(100ms)
    position_x = user.query_mouse_position_x()
    position_y = user.query_mouse_position_y()
    mouse_move(position_x - 200, position_y - 200)
    sleep(700ms)
    mouse_click(1)
go southeast:
    mouse_move(1000, 800)
    mouse_click(1)
    sleep(100ms)
    user.mouse_drag(1)
    sleep(100ms)
    position_x = user.query_mouse_position_x()
    position_y = user.query_mouse_position_y()
    mouse_move(position_x + 200, position_y + 200)
    sleep(700ms)
    mouse_click(1)
go southwest:
    mouse_move(600, 800)
    mouse_click(1)
    sleep(100ms)
    user.mouse_drag(1)
    sleep(100ms)
    position_x = user.query_mouse_position_x()
    position_y = user.query_mouse_position_y()
    mouse_move(position_x - 200, position_y + 200)
    sleep(700ms)
    mouse_click(1)
centre:
    mouse_move(800, 500)
campaigns:
    mouse_move(200, 350)
    sleep(100ms)
    mouse_click(0)
road to dunkirk:
    mouse_move(230, 420)
    sleep(100ms)
    mouse_click(0)
load game:
    mouse_move(930, 970)
    sleep(100ms)
    mouse_click(0)
continue: key(space-2)
eighty: key(8)
