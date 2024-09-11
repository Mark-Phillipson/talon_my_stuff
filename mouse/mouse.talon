<user.screen_step_one> <user.screen_step_vertical> move:
    mouse_move(screen_step_one, screen_step_vertical)
<user.screen_step_two> <user.screen_step_vertical> move:
    vertical = screen_step_vertical - 30
    mouse_move(screen_step_two, vertical)
#commands still in my head from dragon
(move | left) <user.screen_step_one> <user.screen_step_vertical>:
    mouse_move(screen_step_one, screen_step_vertical)
<user.screen_step_one> <user.screen_step_vertical> (click | touch):
    mouse_move(screen_step_one, screen_step_vertical)
    mouse_click(0)
<user.screen_step_two> <user.screen_step_vertical> (click | touch):
    vertical = screen_step_vertical - 30
    mouse_move(screen_step_two, vertical)
    mouse_click(0)
<user.screen_step_one> <user.screen_step_vertical> righty:
    mouse_move(screen_step_one, screen_step_vertical)
    mouse_click(1)
<user.screen_step_two> <user.screen_step_vertical> righty:
    vertical = screen_step_vertical - 30
    mouse_move(screen_step_two, vertical)
    mouse_click(1)
taskbar <user.screen_step_one>:
    mouse_move(screen_step_one, 1025)
    mouse_click(0)
taskbar <user.screen_step_two>:
    mouse_move(screen_step_two, 1020)
    mouse_click(0)
taskbar <user.screen_step_one> <user.number_signed_small>:
    mouse_move(screen_step_one, 1025)
    position_x = user.query_mouse_position_x()
    position_y = user.query_mouse_position_y()
    adjustment = number_signed_small * 5
    mouse_move(position_x + adjustment, position_y)
    mouse_click(0)
menu <user.screen_step_one>:
    mouse_move(screen_step_one, 52)
    mouse_click(0)
menu <user.screen_step_two>:
    mouse_move(screen_step_two, 12)
    mouse_click(0)
ribbon <user.screen_step_one>:
    mouse_move(screen_step_one, 80)
    mouse_click(0)
mouse left <number>:
    position_x = mouse_x()
    position_y = mouse_y()
    mouse_move(position_x - number, position_y)
mouse right <number>:
    position_x = user.query_mouse_position_x()
    position_y = user.query_mouse_position_y()
    mouse_move(position_x + number, position_y)
mouse up <number>:
    position_x = user.query_mouse_position_x()
    position_y = user.query_mouse_position_y()
    mouse_move(position_x, position_y - number)
mouse down <number>:
    position_x = user.query_mouse_position_x()
    position_y = user.query_mouse_position_y()
    mouse_move(position_x, position_y + number)
(lower | low) left <user.number_signed_small>:
    position_x = user.query_mouse_position_x()
    position_y = user.query_mouse_position_y()
    mouse_move(position_x - number_signed_small, position_y + number_signed_small)
(lower | low) right <user.number_signed_small>:
    position_x = user.query_mouse_position_x()
    position_y = user.query_mouse_position_y()
    mouse_move(position_x + number_signed_small, position_y + number_signed_small)
(upper | high) left <user.number_signed_small>:
    position_x = user.query_mouse_position_x()
    position_y = user.query_mouse_position_y()
    mouse_move(position_x - number_signed_small, position_y - number_signed_small)
(upper | high) right <user.number_signed_small>:
    position_x = user.query_mouse_position_x()
    position_y = user.query_mouse_position_y()
    mouse_move(position_x + number_signed_small, position_y - number_signed_small)
left <user.number_signed_small> (click | touch):
    position_x = user.query_mouse_position_x()
    position_y = user.query_mouse_position_y()
    mouse_move(position_x - number_signed_small, position_y)
    mouse_click(0)
right <user.number_signed_small> (click | touch):
    position_x = user.query_mouse_position_x()
    position_y = user.query_mouse_position_y()
    mouse_move(position_x + number_signed_small, position_y)
    mouse_click(0)
(up | raise) <user.number_signed_small> (click | touch):
    position_x = user.query_mouse_position_x()
    position_y = user.query_mouse_position_y()
    mouse_move(position_x, position_y - number_signed_small)
    mouse_click(0)
down <user.number_signed_small> (click | touch):
    position_x = user.query_mouse_position_x()
    position_y = user.query_mouse_position_y()
    mouse_move(position_x, position_y + number_signed_small)
    mouse_click(0)
#(arrow) | (mouse) down: user.mouse_drag(0)
left mouse down: user.mouse_drag(0)
right mouse down: user.mouse_drag(1)
drag six o'clock:
    user.mouse_drag(0)
    sleep(100ms)
    position_x = user.query_mouse_position_x()
    position_y = user.query_mouse_position_y()
    mouse_move(position_x, position_y + 50)
drag twelve o'clock:
    user.mouse_drag(0)
    sleep(100ms)
    position_x = user.query_mouse_position_x()
    position_y = user.query_mouse_position_y()
    mouse_move(position_x, position_y - 50)
drag nine o'clock:
    user.mouse_drag(0)
    sleep(100ms)
    position_x = user.query_mouse_position_x()
    position_y = user.query_mouse_position_y()
    mouse_move(position_x -50, position_y)
drag three o'clock:
    user.mouse_drag(0)
    sleep(100ms)
    position_x = user.query_mouse_position_x()
    position_y = user.query_mouse_position_y()
    mouse_move(position_x + 50, position_y)
grid left:
    user.grid_select_screen(1)
    user.grid_activate()
grid right:
    user.grid_select_screen(2)
    user.grid_activate()
screen <user.number_key>+:
    user.grid_select_screen(2)
    user.grid_activate()
    user.grid_narrow_list(number_key_list)
continuous: user.mouse_scroll_down_continuous()
