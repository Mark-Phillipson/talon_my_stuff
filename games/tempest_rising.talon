app.name: TempestGame
app.app: tempestgame
-
settings():
    user.mode_indicator_show = 0
    # Choose how pop click should work in 'control mouse' mode
    # 0 = off
    # 1 = on with eyetracker but not zoom mouse mode
    # 2 = on but not with zoom mouse mode
    user.mouse_enable_pop_click = 0
    key_hold = 50

    # Zoom Mouse Options
    tracking.zoom_live = true
    tracking.zoom_height = 300
    tracking.zoom_width = 300
    tracking.zoom_scale = 4

# This is a list of the commands that are specific to the Company of Heroes 2 game
tag(): user.talon_hud_automatic_hide
game <user.arrow_key>:
    key(arrow_key)
    repeat(4)
fly <user.arrow_key>:
    key(arrow_key)
    repeat(14)
# Basic commands
move forward:
    key(up)
move back:
    key(down)
move left:
    key(left)
move right:
    key(right)
attack [move]:
    key(a)
    mouse_click(0, down=True)  # Mouse down only
    sleep(30ms)
    mouse_click(0, up=True)    # Mouse up only
stop:
    key(s)
take [all]:
    mouse_move(60, 40)
    sleep(30ms)
    #user.mouse_drag(0)
    mouse_click(0, down=True)  # Mouse down only
    sleep(30ms)
    mouse_move(1670, 250)
    sleep(30ms)
    mouse_move(1670, 979)
    sleep(30ms)
    mouse_click(0, up=True)    # Mouse up only
go home: key(backspace)
pause [game]: key(keypad_multiply)
