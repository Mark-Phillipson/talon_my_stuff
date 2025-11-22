title: Commandos  
-
settings():
    user.mode_indicator_show = 0
    # Choose how pop click should work in 'control mouse' mode
    # 0 = off
    # 1 = on with eyetracker but not zoom mouse mode
    # 2 = on butsssss not with zoom mouse mode
    user.mouse_enable_pop_click = 0
    key_hold = 32
    # Zoom Mouse Options
    tracking.zoom_live = true
    tracking.zoom_height = 300
    tracking.zoom_width = 300
    tracking.zoom_scale = 4

    # This is a list of the commands that are specific to the Company of Heroes 2 game
    tag(): user.talon_hud_automatic_hide
test: key(left)
game <user.arrow_key>:
    key(arrow_key)
    repeat(30)
fly <user.arrow_key>:
    key(arrow_key)
    repeat(60)
# Basic commands
move forward:
    key(up)
move back:
    key(down)
move west:
    key(left)
move east:
    key(right)
[drive] forward:
    key(w)
[drive] back:
    key(s)
[drive] left:
    key(a)
[drive] right:
    key(d)
