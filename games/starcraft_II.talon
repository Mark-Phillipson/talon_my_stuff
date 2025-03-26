app: StarCraft II
-

# StarCraft II Talon Voice Commands

[select] army: key(f2)
[select] idle [worker]: key(f1)
attack [move]: 
    key(a)
    mouse_click(0)
all idle [workers]: key(ctrl-f1)
[select] visible:
    key(ctrl:down)
    mouse_click(0)
move: mouse_click(1)
build [structure]: key(b)
build advanced structure: key(v)
train SCV: key(s)
train marine: key(m)
game <user.arrow_key>:
    key(arrow_key)
    key(arrow_key)
    key(arrow_key)
    key(arrow_key)
    key(arrow_key)
    key(arrow_key)
    key(arrow_key)
fly <user.arrow_key>:
    key(arrow_key)
    repeat(20)
    sleep(50ms)
    key(arrow_key)
    repeat(20)
    sleep(50ms)
menu: key(f10)
[select] box:
    position_x = user.query_mouse_position_x()
    position_y = user.query_mouse_position_y()
    user.mouse_drag(0)
    sleep(100ms)
    mouse_move(position_x + 500, position_y + 500)
    sleep(500ms)
    mouse_click(0)
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
    