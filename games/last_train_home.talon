os: windows
and app.name: Train
os: windows
and app.exe: train-win64-shipping.exe
-
settings():
    user.mode_indicator_show = 0
    user.mouse_enable_pop_click = 0
    key_hold = 50
<user.screen_step_two_commandconquer> <user.screen_step_vertical>:
        mouse_move(screen_step_two_commandconquer, screen_step_vertical)
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
centre:
    mouse_move(800, 500)
rotate right: key(q)
rotate left: key(e)
camera left: key(a)
camera right: key(d)
camera up: key(w)
camera down: key(s)
save game: key(f5)
deck(pedal_left): 
    mouse_drag(0)
deck(pedal_middle): speech.toggle()
deck(pedal_right): 
    mouse_click(0)

select box:
    position_x = user.query_mouse_position_x()
    position_y = user.query_mouse_position_y()
    user.mouse_drag(0)
    sleep(100ms)
    mouse_move(position_x + 500, position_y + 500)
    sleep(500ms)
    mouse_click(0)
units: 
    mouse_move(1207, 1017)
    sleep(100ms)
    mouse_click(0)
create group:
    mouse_move(713, 1017)
    sleep(100ms)
    mouse_click(0)
unit one:
    mouse_move(780, 965)
    sleep(100ms)
    mouse_click(0)    
unit two:
    mouse_move(870, 965)
    sleep(100ms)
    mouse_click(0)    
unit three:
    mouse_move(960, 965)
    sleep(100ms)
    mouse_click(0)
unit four:
    mouse_move(1050, 965)
    sleep(100ms)
    mouse_click(0)
unit five:
    mouse_move(1140, 965)
    sleep(100ms)
    mouse_click(0)
zoom [in]: 
    mouse_move(40, 1035)
    sleep(100ms)
    mouse_click(0)
zoom out:
    mouse_move(80, 1035)    
    sleep(100ms)
    mouse_click(0)
reset camera: key(ctrl-alt-o)    
reset zoom: key(ctrl-alt-z)