app: civilizationvi.exe
app: civilizationvi_dx12.exe
app: sid_meier_s_civilization_v_i_d_x_1_1
-
(go | stay): user.civilization_vi_mouse_movement_toggle()
touch:
    # The click doesn't seem to work unless you move the mouse just before it
    position_x = user.query_mouse_position_x()
    position_y = user.query_mouse_position_y()
    mouse_move(position_x + 3, position_y + 3)
    sleep(50ms)
    mouse_move(position_x - 3, position_y - 3)
    sleep(50ms)
    user.mouse_drag(0)
    sleep(50ms)
    mouse_move(position_x, position_y)
    sleep(50ms)
    mouse_click(1)
    sleep(50ms)
    mouse_click(0)
    sleep(50ms)
    mouse_click(0)
righty:
    # The click doesn't seem to work unless you move the mouse just before it
    position_x = user.query_mouse_position_x()
    position_y = user.query_mouse_position_y()
    mouse_move(position_x + 3, position_y + 3)
    sleep(50ms)
    mouse_move(position_x - 3, position_y - 3)
    sleep(50ms)
    user.mouse_drag(1)
    sleep(50ms)
    mouse_move(position_x, position_y)
    sleep(50ms)
    mouse_click(1)
    sleep(50ms)
    mouse_click(1)
    sleep(50ms)
    mouse_click(1)
deck(pedal_left): mouse_click(0)
zoom out:
    user.mouse_scroll_down(5)
    sleep(50ms)
    user.mouse_scroll_down(5)
zoom in:
    user.mouse_scroll_up(5)
    sleep(50ms)
    user.mouse_scroll_up(5)
