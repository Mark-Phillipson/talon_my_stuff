# Talon Cheatsheet — The Troop

Command | Action | Source
--- | --- | ---
<user.screen_step_screen_one> <user.screen_step_screen_one> | mouse_move(screen_step_screen_one_1, screen_step_screen_one_2) | games/the_troop.talon
app | The Troop.exe | games/the_troop.talon
attack | key(f) | games/the_troop.talon
back | key(a) | games/the_troop.talon
back <number_small> | key(a) ⏎     repeat(number_small-1) | games/the_troop.talon
centre | mouse_move(800, 500) | games/the_troop.talon
down | key(s) | games/the_troop.talon
down <number_small> | key(s) ⏎     repeat(number_small-1) | games/the_troop.talon
down) | key(s) ⏎     repeat(8) | games/the_troop.talon
down) | key(s) ⏎     repeat(7) ⏎     sleep(50ms) ⏎     key(s) ⏎     repeat(7) ⏎     sleep(50ms) ⏎     key(s) ⏎     repeat(7) ⏎     sleep(50ms) | games/the_troop.talon
fly (back | key(s) ⏎     repeat(7) ⏎     sleep(50ms) ⏎     key(s) ⏎     repeat(7) ⏎     sleep(50ms) ⏎     key(s) ⏎     repeat(7) ⏎     sleep(50ms) | games/the_troop.talon
fly (forward | key(w) ⏎     repeat(7) ⏎     sleep(50ms) ⏎     key(w) ⏎     repeat(7) ⏎     sleep(50ms) ⏎     key(w) ⏎     repeat(7) ⏎     sleep(50ms) | games/the_troop.talon
fly left | key(a) ⏎     repeat(7) ⏎     sleep(50ms) ⏎     key(a) ⏎     repeat(7) ⏎     sleep(50ms) ⏎     key(a) ⏎     repeat(7) ⏎     sleep(50ms) | games/the_troop.talon
fly right | key(d) ⏎     repeat(7) ⏎     sleep(50ms) ⏎     key(d) ⏎     repeat(7) ⏎     sleep(50ms) ⏎     key(d) ⏎     repeat(7) ⏎     sleep(50ms) | games/the_troop.talon
forward | key(w) | games/the_troop.talon
forward <number_small> | key(w) ⏎     repeat(number_small-1) | games/the_troop.talon
game (back | key(s) ⏎     repeat(8) | games/the_troop.talon
game (forward | key(w) ⏎     repeat(8) | games/the_troop.talon
game left | key(a) ⏎     repeat(8) | games/the_troop.talon
game right | key(d) ⏎     repeat(8) | games/the_troop.talon
grenade | key(g) | games/the_troop.talon
line of sight | key(r) | games/the_troop.talon
log | key(l) | games/the_troop.talon
minimap | key(m) | games/the_troop.talon
move | key(z) | games/the_troop.talon
next unit | key(tab) | games/the_troop.talon
previous unit | key(ctrl) | games/the_troop.talon
right | key(d) | games/the_troop.talon
right <number_small> | key(d) ⏎     repeat(number_small-1) | games/the_troop.talon
rotate left | key(e) | games/the_troop.talon
rotate right | key(q) | games/the_troop.talon
settings() | user.mode_indicator_show = 0 ⏎     # Choose how pop click should work in 'control mouse' mode ⏎     # 0 = off ⏎     # 1 = on with eyetracker but not zoom mouse mode ⏎     # 2 = on but not with zoom mouse mode ⏎     user.mouse_enable_pop_click = 0 ⏎     key_hold = 50 | games/the_troop.talon
up) | key(w) ⏎     repeat(8) | games/the_troop.talon
up) | key(w) ⏎     repeat(7) ⏎     sleep(50ms) ⏎     key(w) ⏎     repeat(7) ⏎     sleep(50ms) ⏎     key(w) ⏎     repeat(7) ⏎     sleep(50ms) | games/the_troop.talon
zoom | key(keypad_divide) | games/the_troop.talon
zoom out | key(keypad_multiply) | games/the_troop.talon
