app.name: Gates of Hell (x64)
-
settings():
    user.mode_indicator_show = 0
    # Choose how pop click should work in 'control mouse' mode
    # 0 = off
    # 1 = on with eyetracker but not zoom mouse mode
    # 2 = on but not with zoom mouse mode
    user.mouse_enable_pop_click = 0
    key_hold = 32

# This is a list of the commands that are specific to the Gates of Hell game
game up:
    key(w)
    repeat(10)
game down:
    key(s)
    repeat(10)
game left:
    key(a)
    repeat(10)
game right:
    key(d)
    repeat(10)    
fly up:
    key(w)
    repeat(20)
    sleep(50ms)
    key(w)
    repeat(20)
    sleep(50ms)
fly down:
    key(s)
    repeat(20)
    sleep(50ms)
    key(s)
    repeat(20)
    sleep(50ms)
fly left:
    key(a)
    repeat(20)
    sleep(50ms)
    key(a)
    repeat(20)
    sleep(50ms)
fly right:
    key(d)
    repeat(20)
    sleep(50ms)
    key(d)
    repeat(20)
    sleep(50ms)
# Basic commands
move forward:
    key(w)
move back:
    key(s)
move left:
    key(a)
move right:
    key(d)
attack [move]:
    key(a)
    mouse_click(0)
aircraft move: key(Q)
descend: 
    key(menu)
Toggle throw weapon: key(/)
switch weapon: key(.)