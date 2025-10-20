app: SnippingTool.exe
-
settings():
    user.mode_indicator_show = 0
    # Choose how pop click should work in 'control mouse' mode
    # 0 = off
    # 1 = on with eyetracker but not zoom mouse mode
    # 2 = on but not with zoom mouse mode
    user.mouse_enable_pop_click = 0
    key_hold = 50
    # I think this is something AI might have made up user.mouse_delay = 0.5
    

menu: key(alt)
mouse testing:
    position_x = user.query_mouse_position_x()
    position_y = user.query_mouse_position_y()
    user.mouse_testing(position_x, position_y)