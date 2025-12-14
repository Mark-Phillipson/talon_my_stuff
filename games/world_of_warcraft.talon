app = "World of Warcraft"
title = "World of Warcraft"
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

tag(): user.talon_hud_automatic_hide

game <user.arrow_key>:
    key(arrow_key)
    repeat(4)
fly left:
    key(a)
    repeat(14)
fly right:
    key(d)  
    repeat(14)
fly forward:
    key(w)
    repeat(14)
fly back:
    key(s)
    repeat(14)
# Basic commands
space: key(space)
jump: key(space)
move forward:
    key(w)
move back:
    key(s)
move left:
    key(a)
move right:
    key(d)
loot: 
    key(shift)
target: key(f)    

