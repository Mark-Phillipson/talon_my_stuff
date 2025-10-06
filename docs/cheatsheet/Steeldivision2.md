# Talon Cheatsheet — Steeldivision2

Command | Action | Source
--- | --- | ---
<user.screen_step_one> <user.screen_step_vertical> | mouse_move(screen_step_one, screen_step_vertical) ⏎     mouse_click(0) | games/steel_division_2.talon
aircraft | mouse_move(30, 265) | games/steel_division_2.talon
anti-air | mouse_move(30, 205) | games/steel_division_2.talon
anti-tank | mouse_move(30, 175) | games/steel_division_2.talon
app | steeldivision2.exe | games/steel_division_2.talon
artillery | key(J) | games/steel_division_2.talon
attack | key(Q) | games/steel_division_2.talon
auto cover | key(O) | games/steel_division_2.talon
auto strike | key(/) | games/steel_division_2.talon
camera down | key(s:down) ⏎     sleep(100ms) ⏎     key(s:up) | games/steel_division_2.talon
camera down big | key(s:down) ⏎     sleep(500ms) ⏎     key(s:up) | games/steel_division_2.talon
camera left | key(a:down) ⏎     sleep(100ms) ⏎     key(a:up) | games/steel_division_2.talon
camera left big | key(a:down) ⏎     sleep(500ms) ⏎     key(a:up) | games/steel_division_2.talon
camera right | key(d:down) ⏎     sleep(100ms) ⏎     key(d:up) | games/steel_division_2.talon
camera right big | key(d:down) ⏎     sleep(500ms) ⏎     key(d:up) | games/steel_division_2.talon
camera up | key(w:down) ⏎     sleep(100ms) ⏎     key(w:up) | games/steel_division_2.talon
camera up big | key(w:down) ⏎     sleep(500ms) ⏎     key(w:up) | games/steel_division_2.talon
deployment menu | key(`) | games/steel_division_2.talon
display all orders | key(shift :down) | games/steel_division_2.talon
efficient shot | key(ctrl-h) | games/steel_division_2.talon
evacuate | key(V) | games/steel_division_2.talon
fallback | key(R) | games/steel_division_2.talon
fast move and attack | kay(N) | games/steel_division_2.talon
fire at position | key(T) | games/steel_division_2.talon
fire at will | key(.) | games/steel_division_2.talon
flair custom message | key(f4) | games/steel_division_2.talon
flair defend | key(f2) | games/steel_division_2.talon
flare attack | key(f1) | games/steel_division_2.talon
flare help | key(f3) | games/steel_division_2.talon
fly <user.arrow_key> | key(arrow_key) ⏎     repeat(100) ⏎     sleep(100ms) ⏎     key(arrow_key) ⏎     repeat(100) ⏎     sleep(100ms) ⏎     key(arrow_key) ⏎     repeat(100) ⏎     sleep(100ms) ⏎     key(arrow_key) ⏎     repeat(100) ⏎     sleep(100ms) ⏎     key(arrow_key) ⏎     repeat(100) ⏎     sleep(100ms) ⏎     key(arrow_key) ⏎     repeat(100) ⏎     sleep(100ms) | games/steel_division_2.talon
game <user.arrow_key> | key(arrow_key) ⏎     repeat(100) | games/steel_division_2.talon
hold position | key(,) | games/steel_division_2.talon
hunt | key(q) | games/steel_division_2.talon
infantry | mouse_move(30, 85) | games/steel_division_2.talon
line of sight | key(c:10) ⏎     key(c:down) ⏎     sleep(3000ms) ⏎     key(c:up) | games/steel_division_2.talon
menu | mouse_move(30, 25) ⏎     sleep(200ms) ⏎     mouse_click(0) | games/steel_division_2.talon
move and explode | key(K) | games/steel_division_2.talon
move fast | key(F) | games/steel_division_2.talon
pause game | mouse_move(1560, 320) ⏎     sleep(200ms) ⏎     mouse_click(0) | games/steel_division_2.talon
quick hunt | key(ctrl-a) | games/steel_division_2.talon
recon | mouse_move(30, 55) | games/steel_division_2.talon
release orders | key(shift :up) | games/steel_division_2.talon
return fire | key(Z) | games/steel_division_2.talon
reverse | key(R) | games/steel_division_2.talon
reverse tanks | key(g) | games/steel_division_2.talon
seize | key(m) | games/steel_division_2.talon
select all | position_x = user.query_mouse_position_x() ⏎     position_y = user.query_mouse_position_y() ⏎     #this is not working mouse does not move1 ⏎     mouse_move(180, 100) ⏎     sleep(500ms) ⏎     user.mouse_drag(0) ⏎     sleep(200ms) ⏎     mouse_move(1200, 200) ⏎     sleep(200ms) ⏎     mouse_move(1370, 1030) ⏎     sleep(200ms) ⏎     mouse_click(0) | games/steel_division_2.talon
self destruction | ket(L) | games/steel_division_2.talon
six o'clock | mouse_click(1) ⏎     user.mouse_drag(1) ⏎     sleep(100ms) ⏎     position_x = user.query_mouse_position_x() ⏎     position_y = user.query_mouse_position_y() ⏎     mouse_move(position_x, position_y + 200) ⏎     sleep(700ms) ⏎     mouse_click(1) | games/steel_division_2.talon
smoke at position | key(B) | games/steel_division_2.talon
spread out | key(x) | games/steel_division_2.talon
stop | key(E) | games/steel_division_2.talon
support | mouse_move(30, 145) | games/steel_division_2.talon
tank | mouse_move(30, 115) | games/steel_division_2.talon
toggle bullet time | key(P) | games/steel_division_2.talon
Toggle weapons | key(h) | games/steel_division_2.talon
twelve o'clock | mouse_click(1) ⏎     user.mouse_drag(1) ⏎     sleep(100ms) ⏎     position_x = user.query_mouse_position_x() ⏎     position_y = user.query_mouse_position_y() ⏎     mouse_move(position_x, position_y - 200) ⏎     sleep(700ms) ⏎     mouse_click(1) | games/steel_division_2.talon
unit info | key(I) | games/steel_division_2.talon
unload | key(U) | games/steel_division_2.talon
unload at position | key(Y) | games/steel_division_2.talon
zoom in | user.mouse_scroll_up(0.2) | games/steel_division_2.talon
zoom out | user.mouse_scroll_down(0.2) | games/steel_division_2.talon
zoom right in | user.mouse_scroll_up(50) | games/steel_division_2.talon
zoom right out | user.mouse_scroll_down(50) | games/steel_division_2.talon
