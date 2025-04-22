<user.screen_step_one> <user.screen_step_vertical> (move | position):
    vertical = screen_step_vertical + 30
    mouse_move(screen_step_one, vertical)
<user.screen_step_two> <user.screen_step_vertical_monitor_two> (move | position):
    vertical = screen_step_vertical_monitor_two
    mouse_move(screen_step_two, vertical)
<user.screen_step_one> <user.screen_step_vertical> (click | touch):
    vertical = screen_step_vertical + 30
    mouse_move(screen_step_one, vertical)
    mouse_click(0)
<user.screen_step_two> <user.screen_step_vertical_monitor_two> (click | touch):
    mouse_move(screen_step_two, screen_step_vertical_monitor_two)
    mouse_click(0)
<user.screen_step_one> <user.screen_step_vertical> righty:
    vertical = screen_step_vertical + 30
    mouse_move(screen_step_one, vertical)
    mouse_click(1)
<user.screen_step_two> <user.screen_step_vertical_monitor_two> righty:
    mouse_move(screen_step_two, screen_step_vertical_monitor_two)
    mouse_click(1)
taskbar <user.screen_step_one>:
    mouse_move(screen_step_one, 1050)
    mouse_click(0)
apex <user.screen_step_one>:
    mouse_move(-380, 45) 
    mouse_move(screen_step_one, 45)
    mouse_click(0)
taskbar <user.screen_step_two>:
    mouse_move(screen_step_two, 1050)
    mouse_click(0)
apex <user.screen_step_two>:
    mouse_move(screen_step_two, 10)
    mouse_click(0)
taskbar <user.screen_step_two> <user.number_signed_small>:
    mouse_move(screen_step_two, 1050)
    position_x = user.query_mouse_position_x()
    position_y = user.query_mouse_position_y()
    adjustment = number_signed_small * 5
    mouse_move(position_x + adjustment, position_y)
    mouse_click(0)
(menu | leaf) <user.screen_step_one>:
    mouse_move(screen_step_one, 80)
    mouse_click(0)
(menu | leaf) <user.screen_step_two>:
    mouse_move(screen_step_two, 52)
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
zoom mouse here: tracking.zoom()
