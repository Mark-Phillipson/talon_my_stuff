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
<user.screen_step_one> taskbar:
    mouse_move(screen_step_one, 1050)
    mouse_click(0)
<user.screen_step_one> apex:
    mouse_move(-380, 45)
    mouse_move(screen_step_one, 45)
    mouse_click(0)
<user.screen_step_two> taskbar:
    mouse_move(screen_step_two, 1050)
    mouse_click(0)
<user.screen_step_two> apex:
    mouse_move(screen_step_two, 10)
    mouse_click(0)
taskbar <user.screen_step_two> <user.number_signed_small>:
    mouse_move(screen_step_two, 1050)
    position_x = user.query_mouse_position_x()
    position_y = user.query_mouse_position_y()
    adjustment = number_signed_small * 5
    mouse_move(position_x + adjustment, position_y)
    mouse_click(0)
<user.screen_step_one> (menu | leaf):
    mouse_move(screen_step_one, 80)
    mouse_click(0)
<user.screen_step_two> (menu | leaf):
    mouse_move(screen_step_two, 52)
    mouse_click(0)
<user.screen_step_one> ribbon:
    mouse_move(screen_step_one, 80)
    mouse_click(0)
nudge left <number>:
    position_x = mouse_x()
    position_y = mouse_y()
    mouse_move(position_x - number, position_y)
nudge right <number>:
    position_x = user.query_mouse_position_x()
    position_y = user.query_mouse_position_y()
    mouse_move(position_x + number, position_y)
nudge up <number>:
    position_x = user.query_mouse_position_x()
    position_y = user.query_mouse_position_y()
    mouse_move(position_x, position_y - number)
nudge down <number>:
    position_x = user.query_mouse_position_x()
    position_y = user.query_mouse_position_y()
    mouse_move(position_x, position_y + number)

# Two-syllable mouse movement commands (move by 10 pixels)
(nudgee | nudgey | noddy):
    position_x = user.query_mouse_position_x()
    position_y = user.query_mouse_position_y()
    mouse_move(position_x, position_y - 10)

droppy:
    position_x = user.query_mouse_position_x()
    position_y = user.query_mouse_position_y()
    mouse_move(position_x, position_y + 10)

leeway:
    position_x = user.query_mouse_position_x()
    position_y = user.query_mouse_position_y()
    mouse_move(position_x - 10, position_y)

rifty:
    position_x = user.query_mouse_position_x()
    position_y = user.query_mouse_position_y()
    mouse_move(position_x + 10, position_y)
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
spin down: user.mouse_scroll_down_continuous()
continuous: user.mouse_scroll_down_continuous()
spin up: user.mouse_scroll_up_continuous()
stop: user.mouse_scroll_stop()
will stop: user.mouse_scroll_stop()
we'll stop: user.mouse_scroll_stop()
(context) | (righty) | (right click):
    # close zoom if open
    tracking.zoom_cancel()
    mouse_click(1)
    # close the mouse grid if open
    user.grid_close()
zoom off: tracking.zoom_cancel()
