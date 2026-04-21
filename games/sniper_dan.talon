app.exe: e:\steamlibrary\steamapps\common\sniper dan demo\sniper dan demo.exe
win.title: Sniper Dan Demo
-

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

move mouse: mouse_move(100, 100)

# Debug helpers
sniper test:
    print("sniper test triggered")
    key(escape)

sniper mouse test:
    position_x = user.query_mouse_position_x()
    position_y = user.query_mouse_position_y()
    print("sniper mouse test before:", position_x, position_y)
    mouse_move(position_x + 50, position_y)
    sleep(100ms)
    mouse_move(position_x, position_y)
