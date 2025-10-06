# Talon Cheatsheet — Global

Command | Action | Source
--- | --- | ---
(ad tag) | user.run_application_csharp_database_command("add tag " + text) | custom_voice_coding/global_code_writing_helper.talon
(add tag) <user.text> | user.run_application_csharp_database_command("add tag " + text) | custom_voice_coding/global_code_writing_helper.talon
(ask it) | insert("?") ⏎     sleep(200ms) ⏎     key(enter) | core/global.talon
(basket) | insert("?") ⏎     sleep(200ms) ⏎     key(enter) | core/global.talon
(clipboard search) | key(ctrl-shift-f12) | global_customisations.talon
(double quotes in) | insert("\"\"") ⏎     sleep(300ms) ⏎     key(left) | custom_voice_coding/global_code_writing_helper.talon
(double quotes out) | insert("\"\"") | custom_voice_coding/global_code_writing_helper.talon
(draft in code) | user.switcher_focus("code") ⏎     speech.disable() ⏎     sleep(500ms) ⏎     key(ctrl-n) ⏎     sleep(500ms) ⏎     key(super-h) | global_customisations.talon
(end tracking) | key(ctrl-alt-[) | global_customisations.talon
(lower | position_x = user.query_mouse_position_x() ⏎     position_y = user.query_mouse_position_y() ⏎     mouse_move(position_x - number_signed_small, position_y + number_signed_small) | mouse/mouse.talon
(lower | position_x = user.query_mouse_position_x() ⏎     position_y = user.query_mouse_position_y() ⏎     mouse_move(position_x + number_signed_small, position_y + number_signed_small) | mouse/mouse.talon
(quotes in) | insert("\"\"") ⏎     sleep(300ms) ⏎     key(left) | custom_voice_coding/global_code_writing_helper.talon
(quotes out) | insert("\"\"") | custom_voice_coding/global_code_writing_helper.talon
(right click) | # close zoom if open ⏎     tracking.zoom_cancel() ⏎     mouse_click(1) ⏎     # close the mouse grid if open ⏎     user.grid_close() | mouse/mouse.talon
(search clipboard) | key(ctrl-shift-f12) | global_customisations.talon
(stop tracking) | key(ctrl-alt-[) | global_customisations.talon
(up | position_x = user.query_mouse_position_x() ⏎     position_y = user.query_mouse_position_y() ⏎     mouse_move(position_x, position_y - number_signed_small) ⏎     mouse_click(0) | mouse/mouse.talon
(upper | position_x = user.query_mouse_position_x() ⏎     position_y = user.query_mouse_position_y() ⏎     mouse_move(position_x - number_signed_small, position_y - number_signed_small) | mouse/mouse.talon
(upper | position_x = user.query_mouse_position_x() ⏎     position_y = user.query_mouse_position_y() ⏎     mouse_move(position_x + number_signed_small, position_y - number_signed_small) | mouse/mouse.talon
(voice typing in code) | user.switcher_focus("code") ⏎     speech.disable() ⏎     sleep(500ms) ⏎     key(ctrl-n) ⏎     sleep(500ms) ⏎     key(super-h) | global_customisations.talon
<number_small> items | key(shift-down) ⏎     repeat(number_small-1) | custom_voice_coding/global_code_writing_helper.talon
<user.screen_step_one> (menu | mouse_move(screen_step_one, 80) ⏎     mouse_click(0) | mouse/mouse.talon
<user.screen_step_one> <user.screen_step_vertical> (click | vertical = screen_step_vertical + 30 ⏎     mouse_move(screen_step_one, vertical) ⏎     mouse_click(0) | mouse/mouse.talon
<user.screen_step_one> <user.screen_step_vertical> (move | vertical = screen_step_vertical + 30 ⏎     mouse_move(screen_step_one, vertical) | mouse/mouse.talon
<user.screen_step_one> <user.screen_step_vertical> righty | vertical = screen_step_vertical + 30 ⏎     mouse_move(screen_step_one, vertical) ⏎     mouse_click(1) | mouse/mouse.talon
<user.screen_step_one> apex | mouse_move(-380, 45) ⏎     mouse_move(screen_step_one, 45) ⏎     mouse_click(0) | mouse/mouse.talon
<user.screen_step_one> ribbon | mouse_move(screen_step_one, 80) ⏎     mouse_click(0) | mouse/mouse.talon
<user.screen_step_one> taskbar | mouse_move(screen_step_one, 1050) ⏎     mouse_click(0) | mouse/mouse.talon
<user.screen_step_two> (menu | mouse_move(screen_step_two, 52) ⏎     mouse_click(0) | mouse/mouse.talon
<user.screen_step_two> <user.screen_step_vertical_monitor_two> (click | mouse_move(screen_step_two, screen_step_vertical_monitor_two) ⏎     mouse_click(0) | mouse/mouse.talon
<user.screen_step_two> <user.screen_step_vertical_monitor_two> (move | vertical = screen_step_vertical_monitor_two ⏎     mouse_move(screen_step_two, vertical) | mouse/mouse.talon
<user.screen_step_two> <user.screen_step_vertical_monitor_two> righty | mouse_move(screen_step_two, screen_step_vertical_monitor_two) ⏎     mouse_click(1) | mouse/mouse.talon
<user.screen_step_two> apex | mouse_move(screen_step_two, 10) ⏎     mouse_click(0) | mouse/mouse.talon
<user.screen_step_two> taskbar | mouse_move(screen_step_two, 1050) ⏎     mouse_click(0) | mouse/mouse.talon
<user.screen_step_two_commandconquer> <user.screen_step_vertical> | mouse_move(screen_step_two_commandconquer, screen_step_vertical) | games/last_train_home.talon
<user.screen_step_two_commandconquer> <user.screen_step_vertical> | mouse_move(screen_step_two_commandconquer, screen_step_vertical) | games/sanctus_reach.talon
<user.screen_step_two_commandconquer> <user.screen_step_vertical> | mouse_move(screen_step_two_commandconquer, screen_step_vertical) | games/there_came_an_echo.talon
[all] invade | key(ctrl-.) ⏎     sleep(30ms) ⏎     key(a) ⏎     sleep(30ms) ⏎     mouse_click(0) | games/company_of_heroes_2.talon
[all] soldiers | key(ctrl-.) | games/company_of_heroes_2.talon
[all] vehicles | key(ctrl-/) | games/company_of_heroes_2.talon
[curly] braces in | insert("{}") ⏎     sleep(300ms) ⏎     key(left) | custom_voice_coding/global_code_writing_helper.talon
[curly] braces out | insert("{}") | custom_voice_coding/global_code_writing_helper.talon
[enter] army number | insert("24593308") | global_customisations.talon
[enter] default Github | insert("https://github.com/Mark-Phillipson/BlazorCRUD_UIGenerator") | global_customisations.talon
[enter] email address | insert("MPhillipson0@Gmail.com") | global_customisations.talon
[enter] extra email address | insert("Mark.S.Phillipson@outlook.com") | global_customisations.talon
[enter] my last name | insert("Phillipson") | global_customisations.talon
[enter] my name | insert("Mark Phillipson") | global_customisations.talon
[enter] office username | insert("Phillipson@MSPSystems.onmicrosoft.com") | global_customisations.talon
[enter] password | insert("Blackberry1!") | global_customisations.talon
[enter] username | insert("MPhil") ⏎     sleep(100ms) ⏎     key(tab) | global_customisations.talon
[focus] development template | key(ctrl-alt-shift-t) | global_customisations.talon
[focus] system tray | key(super-b) | global_customisations.talon
[game] menu | key(f10) | games/company_of_heroes_2.talon
[game] pause | key(pause) | games/company_of_heroes_2.talon
[get] gammon [bomb] | position_x = user.query_mouse_position_x() ⏎     position_y = user.query_mouse_position_y() ⏎     mouse_move(1790, 1025) ⏎     sleep(30ms) ⏎     mouse_click(0) ⏎     sleep(30ms) ⏎     mouse_move(position_x , position_y ) | games/company_of_heroes_2.talon
[move] back | key(s) | games/gates_of_hell.talon
[move] forward | key(w) | games/gates_of_hell.talon
[move] left | key(a) | games/gates_of_hell.talon
[move] right | key(d) | games/gates_of_hell.talon
[next] idle [soldier] | key(.) | games/company_of_heroes_2.talon
[next] idle vehicle | key(alt-/) | games/company_of_heroes_2.talon
[save to] disk | key(ctrl-s) | core/global.talon
[set] rally point | key(ctrl-a) ⏎     sleep(30ms) ⏎     mouse_click(0) | games/company_of_heroes_2.talon
[toggle] map | key(keypad_0) | games/company_of_heroes_2.talon
[touch] screen one | mouse_move(-680, 480) ⏎     mouse_click(0) | core/global.talon
[touch] screen two | mouse_move(986, 470) ⏎     mouse_click(0) | core/global.talon
[unit] eight view | key(8) ⏎     key(8) | games/company_of_heroes_2.talon
[unit] five view | key(5) ⏎     key(5) | games/company_of_heroes_2.talon
[unit] four view | key(4) ⏎     key(4) | games/company_of_heroes_2.talon
[unit] nine view | key(9) ⏎     key(9) | games/company_of_heroes_2.talon
[unit] one view | key(1) ⏎     key(1) | games/company_of_heroes_2.talon
[unit] seven view | key(7) ⏎     key(7) | games/company_of_heroes_2.talon
[unit] six view | key(6) ⏎     key(6) | games/company_of_heroes_2.talon
[unit] three view | key(3) ⏎     key(3) | games/company_of_heroes_2.talon
[unit] two view | key(2) ⏎     key(2) | games/company_of_heroes_2.talon
[unit] zero view | key(0) ⏎     key(0) | games/company_of_heroes_2.talon
[windows] switch both | key(super-shift-left) ⏎     sleep(60ms) ⏎     key(alt-tab) ⏎     sleep(60ms) ⏎     key(super-shift-left) | global_customisations.talon
^(full stop)+$ | key(super-h) ⏎     sleep(100ms) ⏎     speech.enable() | sleep_mode.talon
^(release)+$ | user.run_application_csharp_database_command("Release Control") ⏎     speech.enable() ⏎     key("ctrl-shift-left") ⏎     key("ctrl-shift-left") | sleep_mode.talon
^(stop voice [typing])+$ | key(super-h) ⏎     sleep(100ms) ⏎     key(escape) ⏎     speech.enable() ⏎     #key("ctrl-shift-left") | sleep_mode.talon
^backspace | key(backspace) | dictation_mixed_modes.talon
^backspace <user.ordinals_small> | key("backspace:{ordinals_small}") | dictation_mixed_modes.talon
^command (return | mode.disable("dictation") ⏎     mode.enable("command") ⏎     sleep(100ms) ⏎     key(enter) | dictation_mixed_modes.talon
^delete | key(delete) | dictation_mixed_modes.talon
^delete <user.ordinals_small> | key("delete:{ordinals_small}") | dictation_mixed_modes.talon
^enter | key(enter) | dictation_mixed_modes.talon
^game mode off$ | mode.disable("game") | core/global.talon
^game mode$ | mode.enable("game") ⏎     mode.enable("command") ⏎     mode.disable("dictation") ⏎     mode.disable("sleep") | core/global.talon
^go down | key(down) | dictation_mixed_modes.talon
^go down <user.ordinals_small> | key("down:{ordinals_small}") | dictation_mixed_modes.talon
^go left | key(left) | dictation_mixed_modes.talon
^go left <user.ordinals_small> | key("left:{ordinals_small}") | dictation_mixed_modes.talon
^go right | key(right) | dictation_mixed_modes.talon
^go right <user.ordinals_small> | key("right:{ordinals_small}") | dictation_mixed_modes.talon
^go up | key(up) | dictation_mixed_modes.talon
^go up <user.ordinals_small> | key("up:{ordinals_small}") | dictation_mixed_modes.talon
^model (this | # Select all text and runs a model prompt on the text and pastes the results BELOW. ⏎     key(ctrl-a) ⏎     text = edit.selected_text() ⏎     result = user.gpt_apply_prompt("", text, "") ⏎     key(down) ⏎     sleep(100ms) ⏎     key(enter) ⏎     key(enter) ⏎     user.paste(result) | core/talon_helpers/gpt.talon
^read clipboard | text = clip.text() ⏎     user.tts(text) | core/talon_helpers/gpt.talon
^read that | #This command relies on text being selected and will read the text out loud ⏎     text = edit.selected_text() ⏎     user.tts(text) | core/talon_helpers/gpt.talon
^space | key(space) | dictation_mixed_modes.talon
^tabby | key(tab) | dictation_mixed_modes.talon
^talon restart$ | user.talon_restart() | core/talon_helpers/talon_helpers.talon
abandoned vehicle | key(l) ⏎     sleep(100ms) ⏎     key(l) | games/gates_of_hell.talon
advanced paste | key(super-shift-v) | plugins/clipboard_manager/clipboard_manager.talon
aircraft mode | key(q) | games/gates_of_hell.talon
aircraft move | key(Q) | games/gates_of_hell.talon
alternate | key(alt) | global_customisations.talon
ambush | user.move_cursor_to_gaze_point() ⏎     sleep(50ms) ⏎     key(a) ⏎     sleep(50ms) ⏎     mouse_click(0) | games/company_of_heroes_2.talon
ampersands out | insert(" && ") | custom_voice_coding/global_code_writing_helper.talon
and app.exe | train-win64-shipping.exe | games/last_train_home.talon
and app.exe | sanctusreach.exe | games/sanctus_reach.talon
and app.name | Train | games/last_train_home.talon
and app.name | SanctusReach.EXE | games/sanctus_reach.talon
and app.name | ThereCameanEcho.exe | games/there_came_an_echo.talon
and hostname | J40L4V3 | global_customisations.talon
angle brackets in | insert("<>") ⏎     sleep(300ms) ⏎     key(left) | custom_voice_coding/global_code_writing_helper.talon
ante run | key(home) ⏎     sleep(30ms) ⏎     key(7) ⏎     sleep(30ms) ⏎     key(u) ⏎     sleep(30ms) ⏎     mouse_click(0) | games/company_of_heroes_2.talon
antitank | key(7) | games/company_of_heroes_2.talon
antitank | key(f2) | games/gates_of_hell.talon
app.exe | colobot.exe | games/colbot.talon
app.name | Company of Heroes 2 | games/company_of_heroes_2.talon
app.name | Gates of Hell (x64) | games/gates_of_hell.talon
assembly | key(b) ⏎     sleep(20ms) ⏎     key(d) ⏎     sleep(20ms) ⏎     mouse_click(0) | games/company_of_heroes_2.talon
assign squad eight | key(shift-8) | games/gates_of_hell.talon
assign squad five | key(shift-5) | games/gates_of_hell.talon
assign squad four | key(shift-4) | games/gates_of_hell.talon
assign squad nine | key(shift-9) | games/gates_of_hell.talon
assign squad one | key(shift-1) | games/gates_of_hell.talon
assign squad seven | key(shift-7) | games/gates_of_hell.talon
assign squad six | key(shift-6) | games/gates_of_hell.talon
assign squad three | key(shift-3) | games/gates_of_hell.talon
assign squad two | key(shift-2) | games/gates_of_hell.talon
astronaut | key(home) | games/colbot.talon
attach | key(shift-g) | games/gates_of_hell.talon
attack | key(f5) | games/gates_of_hell.talon
attack [move] | key(a) ⏎     mouse_click(0) | games/company_of_heroes_2.talon
attack [move] | key(a) ⏎     mouse_click(0) | games/gates_of_hell.talon
attack ground | key(f6) | games/gates_of_hell.talon
attack there | user.move_cursor_to_gaze_point() ⏎     sleep(50ms) ⏎     key(a) ⏎     sleep(50ms) ⏎     mouse_click(0) | games/company_of_heroes_2.talon
attribute {user.html_attributes} | insert(user.html_attributes) ⏎     insert(' ') ⏎     key(left left) | custom_voice_coding/keywords.talon
backspace | key(backspace) | global_customisations.talon
backspace <user.number_signed_small> | key(backspace) ⏎     repeat(number_signed_small-1) | global_customisations.talon
base | key(home) | global_customisations.talon
begin Upwork tracking | key(ctrl-alt-]) | global_customisations.talon
bofors | key(b) ⏎     sleep(20ms) ⏎     key(b) ⏎     sleep(20ms) ⏎     mouse_click(0) | games/company_of_heroes_2.talon
brackets in | insert("()") ⏎     sleep(300ms) ⏎     key(left) | custom_voice_coding/global_code_writing_helper.talon
brackets out | insert("()") | custom_voice_coding/global_code_writing_helper.talon
build like <user.text> | clause = " LIKE '%{text}%'" ⏎     insert(clause) | custom_voice_coding/global_code_writing_helper.talon
calculate <user.number_string> divided by <user.number_string> | value = user.calculate_divide(number_string_1, number_string_2) ⏎     insert(value) | global_customisations.talon
calculate <user.number_string> minus <user.number_string> | value = user.calculate_minus(number_string_1, number_string_2) ⏎     insert(value) | global_customisations.talon
calculate <user.number_string> plus <user.number_string> | value = user.calculate_plus(number_string_1, number_string_2) ⏎     insert(value) | global_customisations.talon
calculate <user.number_string> times <user.number_string> | value = user.calculate_multiply(number_string_1, number_string_2) ⏎     insert(value) | global_customisations.talon
camera [toggle] | key(space) | games/colbot.talon
camera down | key(s) | games/last_train_home.talon
camera down | key(s) | games/sanctus_reach.talon
camera left | key(a) | games/last_train_home.talon
camera left | key(a) | games/sanctus_reach.talon
camera right | key(d) | games/last_train_home.talon
camera right | key(d) | games/sanctus_reach.talon
camera up | key(w) | games/last_train_home.talon
camera up | key(w) | games/sanctus_reach.talon
cancel | key(f) | games/gates_of_hell.talon
capital smash <user.text> | result = user.capital_strip(text) ⏎     insert(result) | custom_voice_coding/global_code_writing_helper.talon
capture video | key(f11) | games/gates_of_hell.talon
centre | mouse_move(800, 500) | games/company_of_heroes_2.talon
centre | mouse_move(800, 500) | games/last_train_home.talon
centre | mouse_move(800, 500) | games/sanctus_reach.talon
centre | mouse_move(800, 500) | games/there_came_an_echo.talon
centre camera | key(shift-f) | games/gates_of_hell.talon
change fire mode | key({) | games/gates_of_hell.talon
change movement mode | key(}) | games/gates_of_hell.talon
click | mouse_click(0) | global_customisations.talon
click and sleep | mouse_click(0) ⏎     speech.disable() | global_customisations.talon
click drowse | speech.disable() ⏎     mouse_click(0) | global_customisations.talon
clippy | user.clipboard_manager_toggle() | plugins/clipboard_manager/clipboard_manager.talon
clippy chuck <number_small> [and <number_small>]* | user.clipboard_manager_remove(number_small_list) | plugins/clipboard_manager/clipboard_manager_open.talon
clippy clear | user.clipboard_manager_remove() | plugins/clipboard_manager/clipboard_manager_open.talon
clippy copy <number_small> [and <number_small>]* | user.clipboard_manager_copy(number_small_list) | plugins/clipboard_manager/clipboard_manager_open.talon
clippy split <number_small> [and <number_small>]* | user.clipboard_manager_split(number_small_list) | plugins/clipboard_manager/clipboard_manager_open.talon
clippy stay | user.clipboard_manager_toggle_sticky() | plugins/clipboard_manager/clipboard_manager_open.talon
color picker | key(super-shift-c) | global_customisations.talon
command palette | key(super-alt-space) | core/global.talon
computer <user.modelPrompt> [{user.modelSource}] [{user.modelDestination}]$ | modelDestination = modelDestination or "to speech" ⏎     user.gpt_apply_prompt(modelPrompt, modelSource or "", "to speech") | core/talon_helpers/gpt.talon
computer <user.text> | result=user.get_result_from_open_ai(text,"") ⏎     #app.notify(result) ⏎     #insert(result) ⏎     user.tts(result) | core/talon_helpers/experimental_service.talon
computer sleep confirm | speech.disable() ⏎     key(super-r) ⏎     sleep(300ms) ⏎     insert("cmd") ⏎     sleep(300ms) ⏎     key(enter) ⏎     sleep(600ms) ⏎     #will hibernate the computer! ⏎     insert("rundll32.exe powrprof.dll, SetSuspendState Sleep") ⏎     sleep(300ms) ⏎     key(enter) | global_customisations.talon
context menu | key(menu) | core/global.talon
continue | mouse_move(1835, 40) ⏎     sleep(100ms) ⏎     mouse_click(0) | games/gates_of_hell.talon
continuous | user.mouse_scroll_down_continuous() | mouse/mouse.talon
control abbreviation | insert("ctrl") | global_customisations.talon
create group | mouse_move(713, 1017) ⏎     sleep(100ms) ⏎     mouse_click(0) | games/last_train_home.talon
crouch | key(lalt) | games/gates_of_hell.talon
custom attributes | user.open_url("https://github.com/Mark-Phillipson/talon_my_stuff/blob/4492ceb5a75c6d4978d43106bc6a9e351596ef0e/custom_voice_coding/html_attributes.py#L7") | custom_voice_coding/global_code_writing_helper.talon
custom categories | user.open_url("https://github.com/Mark-Phillipson/talon_my_stuff/blob/5d910569f482265b8f1ee53b52459b7596fb4a05/custom_voice_coding/custom_snippet_category.py#L12") | custom_voice_coding/global_code_writing_helper.talon
custom languages | user.open_url("https://github.com/Mark-Phillipson/talon_my_stuff/blob/bd0e11dac2957e8cfe1061d0097e832fc10514cd/custom_voice_coding/custom_snippet_languages.py#L7-L8") | custom_voice_coding/global_code_writing_helper.talon
custom launcher categories | user.open_url("https://github.com/Mark-Phillipson/talon_my_stuff/blob/a3ca27e064553a88fdb597584b89622b5630533c/custom_voice_coding/custom_launcher_category.py#L7-L8") | custom_voice_coding/global_code_writing_helper.talon
date insert | insert(user.time_format("%d-%m-%Y")) | global_customisations.talon
deal | key(d) | games/solitaire_and_casual_games.talon
deck(pedal_left) | mouse_drag(0) | games/last_train_home.talon
deck(pedal_middle) | speech.toggle() | games/last_train_home.talon
deck(pedal_right) | mouse_click(0) | games/last_train_home.talon
delete | key(delete) | global_customisations.talon
delete <user.number_signed_small> | key(delete) ⏎     repeat(number_signed_small-1) | global_customisations.talon
descend | key(ctrl) | games/colbot.talon
descend | key(menu) | games/gates_of_hell.talon
descend helicopter | key(lalt) | games/gates_of_hell.talon
dictation <user.text> | insert(text) | global_customisations.talon
direct control | key(e) | games/gates_of_hell.talon
double (base | key(home) ⏎     sleep(100ms) ⏎     key(home) | global_customisations.talon
down <user.number_signed_small> (click | position_x = user.query_mouse_position_x() ⏎     position_y = user.query_mouse_position_y() ⏎     mouse_move(position_x, position_y + number_signed_small) ⏎     mouse_click(0) | mouse/mouse.talon
drag nine o'clock | user.mouse_drag(0) ⏎     sleep(100ms) ⏎     position_x = user.query_mouse_position_x() ⏎     position_y = user.query_mouse_position_y() ⏎     mouse_move(position_x -50, position_y) | mouse/mouse.talon
drag six o'clock | user.mouse_drag(0) ⏎     sleep(100ms) ⏎     position_x = user.query_mouse_position_x() ⏎     position_y = user.query_mouse_position_y() ⏎     mouse_move(position_x, position_y + 50) | mouse/mouse.talon
drag three o'clock | user.mouse_drag(0) ⏎     sleep(100ms) ⏎     position_x = user.query_mouse_position_x() ⏎     position_y = user.query_mouse_position_y() ⏎     mouse_move(position_x + 50, position_y) | mouse/mouse.talon
drag twelve o'clock | user.mouse_drag(0) ⏎     sleep(100ms) ⏎     position_x = user.query_mouse_position_x() ⏎     position_y = user.query_mouse_position_y() ⏎     mouse_move(position_x, position_y - 50) | mouse/mouse.talon
drop item | key(b) | games/gates_of_hell.talon
drowse | #app.notify('I feel drowsy.', 'Talon Now Sleeping', 'DROWSE', true) ⏎     speech.disable() | global_customisations.talon
east | key(right) | games/company_of_heroes_2.talon
eight attack | key(8) ⏎     sleep(30ms) ⏎     key(a) ⏎     sleep(30ms) ⏎     mouse_click(0) | games/company_of_heroes_2.talon
eight back | key(8) ⏎     sleep(30ms) ⏎     key(u) ⏎     sleep(30ms) ⏎     mouse_click(0) | games/company_of_heroes_2.talon
eight o'clock | user.mouse_drag(1) ⏎     sleep(100ms) ⏎     position_x = user.query_mouse_position_x() ⏎     position_y = user.query_mouse_position_y() ⏎     mouse_move(position_x - 132, position_y + 66) ⏎     sleep(700ms) ⏎     user.mouse_drag_end() | games/company_of_heroes_2.talon
eleven o'clock | user.mouse_drag(1) ⏎     sleep(100ms) ⏎     position_x = user.query_mouse_position_x() ⏎     position_y = user.query_mouse_position_y() ⏎     mouse_move(position_x - 66, position_y - 132) ⏎     sleep(700ms) ⏎     user.mouse_drag_end() | games/company_of_heroes_2.talon
emoji {user.emoji} | user.paste(emoji) | core/global.talon
emplacement eighth | position_x = user.query_mouse_position_x() ⏎     position_y = user.query_mouse_position_y() ⏎     mouse_move(1520, 340) ⏎     sleep(30ms) ⏎     mouse_click(0) ⏎     mouse_move(position_x , position_y ) | games/company_of_heroes_2.talon
emplacement fifth | position_x = user.query_mouse_position_x() ⏎     position_y = user.query_mouse_position_y() ⏎     mouse_move(1670, 348) ⏎     sleep(30ms) ⏎     mouse_click(0) ⏎     mouse_move(position_x , position_y ) | games/company_of_heroes_2.talon
emplacement first | position_x = user.query_mouse_position_x() ⏎     position_y = user.query_mouse_position_y() ⏎     mouse_move(1885, 345) ⏎     sleep(30ms) ⏎     mouse_click(0) ⏎     mouse_move(position_x , position_y ) | games/company_of_heroes_2.talon
emplacement fourth | position_x = user.query_mouse_position_x() ⏎     position_y = user.query_mouse_position_y() ⏎     mouse_move(1720, 340) ⏎     sleep(30ms) ⏎     mouse_click(0) ⏎     mouse_move(position_x , position_y ) | games/company_of_heroes_2.talon
emplacement ninth | position_x = user.query_mouse_position_x() ⏎     position_y = user.query_mouse_position_y() ⏎     mouse_move(1470, 340) ⏎     sleep(30ms) ⏎     mouse_click(0) ⏎     mouse_move(position_x , position_y ) | games/company_of_heroes_2.talon
emplacement second | position_x = user.query_mouse_position_x() ⏎     position_y = user.query_mouse_position_y() ⏎     mouse_move(1835, 350) ⏎     sleep(30ms) ⏎     mouse_click(0) ⏎     mouse_move(position_x , position_y ) | games/company_of_heroes_2.talon
emplacement seventh | position_x = user.query_mouse_position_x() ⏎     position_y = user.query_mouse_position_y() ⏎     mouse_move(1570, 340) ⏎     sleep(30ms) ⏎     mouse_click(0) ⏎     mouse_move(position_x , position_y ) | games/company_of_heroes_2.talon
emplacement sixth | position_x = user.query_mouse_position_x() ⏎     position_y = user.query_mouse_position_y() ⏎     mouse_move(1620, 350) ⏎     sleep(30ms) ⏎     mouse_click(0) ⏎     mouse_move(position_x , position_y ) | games/company_of_heroes_2.talon
emplacement third | position_x = user.query_mouse_position_x() ⏎     position_y = user.query_mouse_position_y() ⏎     mouse_move(1780, 340) ⏎     sleep(30ms) ⏎     mouse_click(0) ⏎     mouse_move(position_x , position_y ) | games/company_of_heroes_2.talon
end turn | mouse_move(1770, 1025) ⏎     sleep(100ms) ⏎     mouse_click(0) | games/sanctus_reach.talon
enter random numbers | number = user.generate_random_number() ⏎     insert(number) ⏎     sleep(100ms) ⏎     key(tab) | random_number.talon
enter timestamp | insert(user.time_format("%Y-%m-%d %H:%M:%S")) | global_customisations.talon
enter) | mode.disable("dictation") ⏎     mode.enable("command") ⏎     sleep(100ms) ⏎     key(enter) | dictation_mixed_modes.talon
equals out | insert(" == ") | custom_voice_coding/global_code_writing_helper.talon
examine | key(x) | games/gates_of_hell.talon
exit [mission] | key(escape) | games/colbot.talon
explode | key(ctrl-/) ⏎     sleep(30ms) ⏎     key(a) ⏎     sleep(30ms) ⏎     mouse_click(0) | games/company_of_heroes_2.talon
fake email | emailAddress = user.fake_email() ⏎     insert(emailAddress) | global_customisations.talon
fake phone number | phoneNumber = user.generate_random_number() ⏎     insert(phoneNumber) | global_customisations.talon
fast [speed] | key(f8) | games/colbot.talon
find again | key(f3) | global_customisations.talon
five attack | key(5) ⏎     sleep(30ms) ⏎     key(a) ⏎     sleep(30ms) ⏎     mouse_click(0) | games/company_of_heroes_2.talon
five back | key(5) ⏎     sleep(30ms) ⏎     key(u) ⏎     sleep(30ms) ⏎     mouse_click(0) | games/company_of_heroes_2.talon
five o'clock | user.mouse_drag(1) ⏎     sleep(100ms) ⏎     position_x = user.query_mouse_position_x() ⏎     position_y = user.query_mouse_position_y() ⏎     mouse_move(position_x + 132, position_y + 66) ⏎     sleep(700ms) ⏎     user.mouse_drag_end() | games/company_of_heroes_2.talon
fluent search | key(super-ctrl-shift) | global_customisations.talon
fluent search <user.text> | key(super-ctrl-shift) ⏎     sleep(300ms) ⏎     insert(text) ⏎     sleep(300ms) | global_customisations.talon
fly <user.arrow_key> | key(arrow_key) ⏎     repeat(7) ⏎     sleep(50ms) ⏎     key(arrow_key) ⏎     repeat(7) ⏎     sleep(50ms) | games/colbot.talon
fly <user.arrow_key> | key(arrow_key) ⏎     repeat(14) | games/company_of_heroes_2.talon
fly <user.arrow_key> | key(arrow_key) ⏎     repeat(4) ⏎     sleep(50ms) ⏎     key(arrow_key) ⏎     repeat(4) ⏎     sleep(50ms) ⏎     key(arrow_key) ⏎     repeat(4) ⏎     sleep(50ms) | games/last_train_home.talon
fly <user.arrow_key> | key(arrow_key) ⏎     repeat(4) ⏎     sleep(50ms) ⏎     key(arrow_key) ⏎     repeat(4) ⏎     sleep(50ms) ⏎     key(arrow_key) ⏎     repeat(4) ⏎     sleep(50ms) | games/sanctus_reach.talon
fly <user.arrow_key> | key(arrow_key) ⏎     repeat(4) ⏎     sleep(50ms) ⏎     key(arrow_key) ⏎     repeat(4) ⏎     sleep(50ms) ⏎     key(arrow_key) ⏎     repeat(4) ⏎     sleep(50ms) | games/there_came_an_echo.talon
fly down | key(s) ⏎     repeat(20) ⏎     sleep(50ms) ⏎     key(s) ⏎     repeat(20) ⏎     sleep(50ms) | games/gates_of_hell.talon
fly left | key(a) ⏎     repeat(20) ⏎     sleep(50ms) ⏎     key(a) ⏎     repeat(20) ⏎     sleep(50ms) | games/gates_of_hell.talon
fly right | key(d) ⏎     repeat(20) ⏎     sleep(50ms) ⏎     key(d) ⏎     repeat(20) ⏎     sleep(50ms) | games/gates_of_hell.talon
fly up | key(w) ⏎     repeat(20) ⏎     sleep(50ms) ⏎     key(w) ⏎     repeat(20) ⏎     sleep(50ms) | games/gates_of_hell.talon
focus [talon] community | key(ctrl-alt-shift-y) | global_customisations.talon
focus [talon] my stuff | key(ctrl-alt-shift-m) | global_customisations.talon
focus Blazor CRUD | key(ctrl-alt-shift-c) | global_customisations.talon
focus chrome | user.switcher_focus("chrome.exe") | global_customisations.talon
focus code | user.switcher_focus("code.exe") | global_customisations.talon
focus data | user.switcher_focus("Azure Data Studio") | global_customisations.talon
focus desktop | key(super-d) | global_customisations.talon
focus edge | user.switcher_focus("msedge.exe") | global_customisations.talon
focus studio | user.switcher_focus("devenv.exe") | global_customisations.talon
focus taskbar | key(super-t) | global_customisations.talon
focus terminal | user.switcher_focus("windowsterminal.exe") | global_customisations.talon
focus voice admin | key(ctrl-alt-shift-v) | global_customisations.talon
four attack | key(4) ⏎     sleep(30ms) ⏎     key(a) ⏎     sleep(30ms) ⏎     mouse_click(0) | games/company_of_heroes_2.talon
four back | key(4) ⏎     sleep(30ms) ⏎     key(u) ⏎     sleep(30ms) ⏎     mouse_click(0) | games/company_of_heroes_2.talon
four o'clock | user.mouse_drag(1) ⏎     sleep(100ms) ⏎     position_x = user.query_mouse_position_x() ⏎     position_y = user.query_mouse_position_y() ⏎     mouse_move(position_x + 132, position_y + 66) ⏎     sleep(700ms) ⏎     user.mouse_drag_end() | games/company_of_heroes_2.talon
fresh line | key(end) ⏎     key(enter) | dictation_mixed_modes.talon
fresh line above | key(home) ⏎     key(home) ⏎     key(enter) ⏎     key(up) | dictation_mixed_modes.talon
fresh paragraph | key(end) ⏎     key(enter) ⏎     key(enter) | dictation_mixed_modes.talon
fuel | key(b) ⏎     sleep(20ms) ⏎     key(f) ⏎     sleep(20ms) ⏎     mouse_click(0) | games/company_of_heroes_2.talon
function take eight | key(f8) | games/gates_of_hell.talon
function take eleven | key(f11) | games/gates_of_hell.talon
function take five | key(f5) | games/gates_of_hell.talon
function take four | key(f4) | games/gates_of_hell.talon
function take nine | key(f9) | games/gates_of_hell.talon
function take one | key(f1) | games/gates_of_hell.talon
function take seven | key(f7) | games/gates_of_hell.talon
function take six | key(f6) | games/gates_of_hell.talon
function take ten | key(f10) | games/gates_of_hell.talon
function take three | key(f3) | games/gates_of_hell.talon
function take twelve | key(f12) | games/gates_of_hell.talon
function take two | key(f2) | games/gates_of_hell.talon
game <user.arrow_key> | key(arrow_key) ⏎     repeat(4) | games/colbot.talon
game <user.arrow_key> | key(arrow_key) ⏎     repeat(4) | games/company_of_heroes_2.talon
game <user.arrow_key> | key(arrow_key) ⏎     repeat(4) | games/last_train_home.talon
game <user.arrow_key> | key(arrow_key) ⏎     repeat(4) | games/sanctus_reach.talon
game <user.arrow_key> | key(arrow_key) ⏎     repeat(4) | games/there_came_an_echo.talon
game down | key(s) ⏎     repeat(10) | games/gates_of_hell.talon
game left | key(a) ⏎     repeat(10) | games/gates_of_hell.talon
game pause | key(pause) | games/gates_of_hell.talon
game right | key(d) ⏎     repeat(10) | games/gates_of_hell.talon
game speed | key(backspace) | games/gates_of_hell.talon
game stop | key(pause) | games/company_of_heroes_2.talon
game up | key(w) ⏎     repeat(10) | games/gates_of_hell.talon
get [meaning] phrase <user.text> | result=user.get_result_from_open_ai(text,"Please return a phrase to this one with the same meaning") ⏎     insert(result) | core/talon_helpers/experimental_service.talon
get correct [<user.text>] | result=user.get_result_from_open_ai(text,"There is a likelihood that the speech recognition has made a mistake.Please return the correct spelling of the given word. Do not return anything other than the single word") ⏎     insert(result) | core/talon_helpers/experimental_service.talon
get opposite [word] <user.text> | result=user.get_result_from_open_ai(text,"Please return a word that is the opposite of the given word.") ⏎     insert(result) | core/talon_helpers/experimental_service.talon
get similar [phrase] <user.text> | result=user.get_result_from_open_ai(text,"Please return a similar phrase to this one") ⏎     insert(result) | core/talon_helpers/experimental_service.talon
get simile <user.text> | result=user.get_result_from_open_ai(text,"Please return a single word that is a simile for the given word.") ⏎     insert(result) | core/talon_helpers/experimental_service.talon
get stuff | mouse_move(380, 855) ⏎     sleep(30ms) ⏎     mouse_click(0) | games/company_of_heroes_2.talon
glide [cursor] | key(super-alt-.) | core/global.talon
global chat | key(shift-z) | games/gates_of_hell.talon
go [to] desktop | user.folder_navigate("C:\\Users\\MPhil\\Desktop") | custom_voice_coding/global_code_writing_helper.talon
go [to] desktop pictures | user.folder_navigate("C:\\DesktopPictures") | custom_voice_coding/global_code_writing_helper.talon
go [to] documents | user.folder_navigate("C:\\Users\\MPhil\\OneDrive\\Documents") | custom_voice_coding/global_code_writing_helper.talon
go [to] downloads | user.folder_navigate("C:\\Users\\MPhil\\Downloads") | custom_voice_coding/global_code_writing_helper.talon
go [to] pictures | user.folder_navigate("C:\\Users\\MPhil\\OneDrive\\Pictures") | custom_voice_coding/global_code_writing_helper.talon
go [to] videos | user.folder_navigate("C:\\Users\\MPhil\\Videos") | custom_voice_coding/global_code_writing_helper.talon
go down | key(down) | global_customisations.talon
go end | key(end) | dictation_mixed_modes.talon
go home | key(home) | games/company_of_heroes_2.talon
go left | key(left) | global_customisations.talon
go right | key(right) | global_customisations.talon
go there | mouse_click(0) ⏎     sleep(60ms) ⏎     key(keypad_0) | games/company_of_heroes_2.talon
go up | key(up) | global_customisations.talon
grenade | key(f1) | games/gates_of_hell.talon
grid left | user.grid_select_screen(1) ⏎     user.grid_activate() | mouse/mouse.talon
grid right | user.grid_select_screen(2) ⏎     user.grid_activate() | mouse/mouse.talon
group eight | key(shift-8) ⏎     key(ctrl-8) | games/company_of_heroes_2.talon
group five | key(shift-5) ⏎     key(ctrl-5) | games/company_of_heroes_2.talon
group four | key(shift-4) ⏎     key(ctrl-4) | games/company_of_heroes_2.talon
group nine | key(shift-9) ⏎     key(ctrl-9) | games/company_of_heroes_2.talon
group one | key(shift-1) ⏎     key(ctrl-1) | games/company_of_heroes_2.talon
group seven | key(shift-7) ⏎     key(ctrl-7) | games/company_of_heroes_2.talon
group six | key(shift-6) ⏎     key(ctrl-6) | games/company_of_heroes_2.talon
group three | key(shift-3) ⏎     key(ctrl-3) | games/company_of_heroes_2.talon
group two | key(shift-2) ⏎     key(ctrl-2) | games/company_of_heroes_2.talon
group zero | key(shift-0) ⏎     key(ctrl-0) | games/company_of_heroes_2.talon
headquarters | key(f1) | games/company_of_heroes_2.talon
heal | key(f8) | games/gates_of_hell.talon
heavy [vehicles] | key(f5) | games/company_of_heroes_2.talon
heel | key(f8) | games/gates_of_hell.talon
help search selection | key(ctrl-c) ⏎     sleep(500ms) ⏎     text = clip.text() ⏎     user.help_search(text) | core/global.talon
hex color random [<user.text>] | result=user.get_result_from_open_ai(text,"Please return a random hex color code.") ⏎     insert(result) | core/talon_helpers/experimental_service.talon
high) left <user.number_signed_small> | position_x = user.query_mouse_position_x() ⏎     position_y = user.query_mouse_position_y() ⏎     mouse_move(position_x - number_signed_small, position_y - number_signed_small) | mouse/mouse.talon
high) right <user.number_signed_small> | position_x = user.query_mouse_position_x() ⏎     position_y = user.query_mouse_position_y() ⏎     mouse_move(position_x + number_signed_small, position_y - number_signed_small) | mouse/mouse.talon
highlight corpses | key(v) | games/gates_of_hell.talon
highlight items | key(c) | games/gates_of_hell.talon
hold shift | key(shift:down) | games/company_of_heroes_2.talon
home | key(home) | global_customisations.talon
home) | key(home) ⏎     sleep(100ms) ⏎     key(home) | global_customisations.talon
hover | user.move_cursor_to_gaze_point() | core/global.talon
idle | key(alt-.) | games/company_of_heroes_2.talon
if statement razor | insert("@if (true) { }") ⏎     sleep(100ms) ⏎     key(escape) ⏎     sleep(100ms) ⏎     key(left left left left left) ⏎     key(shift-ctrl-left) | custom_voice_coding/global_code_writing_helper.talon
infantry | key(f2) | games/company_of_heroes_2.talon
inventory | key(i) | games/gates_of_hell.talon
key(ctrl-shift-`) | user.talon_restart() | core/talon_helpers/talon_helpers.talon
key(keypad_minus) | speech.enable() | global_customisations.talon
key(keypad_plus) | speech.disable() | global_customisations.talon
keyword {user.keywords} | insert(user.keywords) | custom_voice_coding/keywords.talon
kill tank | key(7) ⏎     sleep(30ms) ⏎     key(a) ⏎     sleep(30ms) ⏎     mouse_click(0) | games/company_of_heroes_2.talon
launch code | key(super) ⏎     sleep(900ms) ⏎     insert("visual studio code") ⏎     sleep(900ms) ⏎     key(enter) | global_customisations.talon
launch dictation chat | user.open_url("http://localhost:5000/chat") | custom_voice_coding/global_code_writing_helper.talon
launch preview | key(super) ⏎     sleep(900ms) ⏎     insert("visual studio 2022 preview") ⏎     sleep(900ms) ⏎     key(enter) | global_customisations.talon
launch realtime | key(super-r) ⏎     sleep(300ms) ⏎     insert("cmd") ⏎     sleep(600ms) ⏎     key(enter) ⏎     sleep(600ms) ⏎     insert("cd c:\\Users\\MPhil\\source\\repos\\RealtimeAIApp\\RealtimeFormApp") ⏎     sleep(600ms) ⏎     key(enter) ⏎     sleep(600ms) ⏎     insert("dotnet run --configuration Release --urls http://localhost:5006") ⏎     sleep(300ms) ⏎     key(enter) ⏎     user.open_url("http://localhost:5006") | custom_voice_coding/global_code_writing_helper.talon
launch voice admin | user.launch_voice_admin() | custom_voice_coding/global_code_writing_helper.talon
launch {user.launcher_category} | user.run_application_voice_admin_windows_forms_launcher(launcher_category) | custom_voice_coding/global_code_writing_helper.talon
launch {user.launcher_category} <user.text> | user.run_application_voice_admin_windows_forms_launcher_with_parameter(launcher_category, text) | custom_voice_coding/global_code_writing_helper.talon
lay down | key(lctrl) | games/gates_of_hell.talon
lazy | key(alt-/) | games/company_of_heroes_2.talon
leaf) | mouse_move(screen_step_one, 80) ⏎     mouse_click(0) | mouse/mouse.talon
leaf) | mouse_move(screen_step_two, 52) ⏎     mouse_click(0) | mouse/mouse.talon
left <number_small> items | key(shift-left) ⏎     repeat(number_small-1) | custom_voice_coding/global_code_writing_helper.talon
left <user.number_signed_small> (click | position_x = user.query_mouse_position_x() ⏎     position_y = user.query_mouse_position_y() ⏎     mouse_move(position_x - number_signed_small, position_y) ⏎     mouse_click(0) | mouse/mouse.talon
left card | mouse_move(813, 793) ⏎     sleep(30ms) ⏎     mouse_click(0) | games/solitaire_and_casual_games.talon
left mouse down | user.mouse_drag(0) | mouse/mouse.talon
left select | key(ctrl-shift-left) | custom_voice_coding/global_code_writing_helper.talon
light [vehicles] | key(f4) | games/company_of_heroes_2.talon
load [game] | key(f9) | games/colbot.talon
look | key(r) | games/gates_of_hell.talon
low) left <user.number_signed_small> | position_x = user.query_mouse_position_x() ⏎     position_y = user.query_mouse_position_y() ⏎     mouse_move(position_x - number_signed_small, position_y + number_signed_small) | mouse/mouse.talon
low) right <user.number_signed_small> | position_x = user.query_mouse_position_x() ⏎     position_y = user.query_mouse_position_y() ⏎     mouse_move(position_x + number_signed_small, position_y + number_signed_small) | mouse/mouse.talon
main action | key(e) | games/colbot.talon
map | key(m) | games/gates_of_hell.talon
maximise [window] | key(alt-space) ⏎     sleep(700ms) ⏎     key(x) | global_customisations.talon
melee | key(f7) | games/gates_of_hell.talon
menu | key(esc) | games/gates_of_hell.talon
message history | key(h) | games/gates_of_hell.talon
minimap | key(ctrl-m) | games/gates_of_hell.talon
minimise [window] | key(alt-space) ⏎     sleep(400ms) ⏎     key(n) | global_customisations.talon
mission [instructions] | key(f1) | games/colbot.talon
mode | dictation | dictation_mixed_modes.talon
mode | mixed | dictation_mixed_modes.talon
mode | command | dictation_mixed_modes.talon
mode | sleep | sleep_mode.talon
mode | sleep | core/deck_and_sleeping.talon
mode | command | core/global_not_visual_studio.talon
mode | dictation | core/global_not_visual_studio.talon
mortars | key(b) ⏎     sleep(20ms) ⏎     key(r) ⏎     sleep(20ms) ⏎     mouse_click(0) | games/company_of_heroes_2.talon
mouse down <number> | position_x = user.query_mouse_position_x() ⏎     position_y = user.query_mouse_position_y() ⏎     mouse_move(position_x, position_y + number) | mouse/mouse.talon
mouse last position | mouse_coordinates = clip.text() ⏎     user.move_mouse_from_string(mouse_coordinates) | core/global.talon
mouse left <number> | position_x = mouse_x() ⏎     position_y = mouse_y() ⏎     mouse_move(position_x - number, position_y) | mouse/mouse.talon
mouse right <number> | position_x = user.query_mouse_position_x() ⏎     position_y = user.query_mouse_position_y() ⏎     mouse_move(position_x + number, position_y) | mouse/mouse.talon
mouse test | position_x = user.query_mouse_position_x() ⏎     position_y = user.query_mouse_position_y() ⏎     mouse_move(1720, 140) ⏎     sleep(1000ms) ⏎     user.mouse_zoom_relative() ⏎     sleep(1000ms) ⏎     mouse_move(position_x, position_y) | mouse/mouse.talon
mouse up <number> | position_x = user.query_mouse_position_x() ⏎     position_y = user.query_mouse_position_y() ⏎     mouse_move(position_x, position_y - number) | mouse/mouse.talon
move [to] bottom | key(ctrl-end) | global_customisations.talon
move [to] top | key(ctrl-home) | global_customisations.talon
move back | key(down) | games/colbot.talon
move back | key(down) | games/company_of_heroes_2.talon
move down <number_small> | key(down) ⏎     repeat(number_small-1) | custom_voice_coding/global_code_writing_helper.talon
move forward | key(up) | games/colbot.talon
move forward | key(up) | games/company_of_heroes_2.talon
move left | key(left) | games/colbot.talon
move left | key(left) | games/company_of_heroes_2.talon
move left <number_small> | key(left) ⏎     repeat(number_small-1) | custom_voice_coding/global_code_writing_helper.talon
move line into braces | key(end) ⏎     key(down down) ⏎     key(home) ⏎     key(shift-end) ⏎     key(delete) ⏎     key(delete) ⏎     sleep(50ms) ⏎     key(ctrl-f1) ⏎     key(ctrl-f4) | custom_voice_coding/global_code_writing_helper.talon
move right | key(right) | games/colbot.talon
move right | key(right) | games/company_of_heroes_2.talon
move right <number_small> | key(right) ⏎     repeat(number_small-1) | custom_voice_coding/global_code_writing_helper.talon
move up <number_small> | key(up) ⏎     repeat(number_small-1) | global_customisations.talon
move up <number_small> | key(up) ⏎     repeat(number_small-1) | custom_voice_coding/global_code_writing_helper.talon
munition | key(b) ⏎     sleep(20ms) ⏎     key(m) ⏎     sleep(20ms) ⏎     mouse_click(0) | games/company_of_heroes_2.talon
mute microphone | key(ctrl-u) | games/gates_of_hell.talon
new block brackets | key(end) ⏎     key(enter) ⏎     insert("{}") ⏎     key(left) ⏎     sleep(100ms) ⏎     key(enter) ⏎     key(up) | custom_voice_coding/global_code_writing_helper.talon
new line | key(enter) | dictation_mixed_modes.talon
new paragraph | key(enter) | dictation_mixed_modes.talon
next | key(shift:down) ⏎     sleep(30ms) ⏎     mouse_click(0) ⏎     sleep(30ms) ⏎     key(shift:up) | games/company_of_heroes_2.talon
nine attack | key(9) ⏎     sleep(30ms) ⏎     key(a) ⏎     sleep(30ms) ⏎     mouse_click(0) | games/company_of_heroes_2.talon
nine back | key(9) ⏎     sleep(30ms) ⏎     key(u) ⏎     sleep(30ms) ⏎     mouse_click(0) | games/company_of_heroes_2.talon
nine o'clock | user.mouse_drag(1) ⏎     sleep(100ms) ⏎     position_x = user.query_mouse_position_x() ⏎     position_y = user.query_mouse_position_y() ⏎     mouse_move(position_x - 300, position_y) ⏎     sleep(700ms) ⏎     user.mouse_drag_end() | games/company_of_heroes_2.talon
normal [speed] | key(f7) | games/colbot.talon
north | key(up) | games/company_of_heroes_2.talon
not app | devenv.exe | core/global_not_visual_studio.talon
objectives | key(o) | games/gates_of_hell.talon
one attack | key(1) ⏎     sleep(30ms) ⏎     key(a) ⏎     sleep(30ms) ⏎     mouse_click(0) | games/company_of_heroes_2.talon
one back | key(1) ⏎     sleep(30ms) ⏎     key(u) ⏎     sleep(30ms) ⏎     mouse_click(0) | games/company_of_heroes_2.talon
one o'clock | user.mouse_drag(1) ⏎     sleep(100ms) ⏎     position_x = user.query_mouse_position_x() ⏎     position_y = user.query_mouse_position_y() ⏎     mouse_move(position_x + 66, position_y - 132) ⏎     sleep(700ms) ⏎     user.mouse_drag_end() | games/company_of_heroes_2.talon
open clipboard | key(super-v) | global_customisations.talon
open file manager | key(super-e) | global_customisations.talon
order squad | mouse_click(3) | games/gates_of_hell.talon
os | windows | global_customisations.talon
os | windows | games/last_train_home.talon
os | windows | games/last_train_home.talon
os | windows | games/sanctus_reach.talon
os | windows | games/sanctus_reach.talon
os | windows | games/there_came_an_echo.talon
paste <number_small> [and <number_small>]* | user.clipboard_manager_paste(number_small_list) | plugins/clipboard_manager/clipboard_manager.talon
paste <user.ordinals_small> [and <user.ordinals_small>]* | user.clipboard_manager_paste(ordinals_small_list) | plugins/clipboard_manager/clipboard_manager.talon
paste as text | key(super-ctrl-alt-v) | plugins/clipboard_manager/clipboard_manager.talon
paste special <number_small> [and <number_small>]* | user.clipboard_manager_paste(number_small_list, 1) | plugins/clipboard_manager/clipboard_manager.talon
paste special <user.ordinals_small> [and <user.ordinals_small>]* | user.clipboard_manager_paste(ordinals_small_list, 1) | plugins/clipboard_manager/clipboard_manager.talon
pause [game] | key(keypad_decimal) | games/colbot.talon
pause game | key(pause) | games/company_of_heroes_2.talon
pause some | sleep(500ms) | global_customisations.talon
pick <number_small> | user.pick_item(number_small) | core/global.talon
pick <user.letters> | "{letters}" ⏎     key(enter) | core/global.talon
pick <user.word> | "{word}" ⏎     key(enter) | core/global.talon
pick to | user.pick_item(2) | core/global.talon
pipes out | insert(" \|\| ") | custom_voice_coding/global_code_writing_helper.talon
pitch down | key(') | games/gates_of_hell.talon
pitch up | key(;) | games/gates_of_hell.talon
position) | vertical = screen_step_vertical + 30 ⏎     mouse_move(screen_step_one, vertical) | mouse/mouse.talon
position) | vertical = screen_step_vertical_monitor_two ⏎     mouse_move(screen_step_two, vertical) | mouse/mouse.talon
press alt | key(alt) | global_customisations.talon
previous | key(keypad_0) | games/colbot.talon
programming [help] | key(f2) | games/colbot.talon
push to take | key(u) | games/gates_of_hell.talon
queue | key(shift:down) ⏎     sleep(30ms) ⏎     mouse_click(1) ⏎     sleep(30ms) ⏎     key(shift:up) | games/company_of_heroes_2.talon
quick aim | mouse_click(1) | games/gates_of_hell.talon
raise) <user.number_signed_small> (click | position_x = user.query_mouse_position_x() ⏎     position_y = user.query_mouse_position_y() ⏎     mouse_move(position_x, position_y - number_signed_small) ⏎     mouse_click(0) | mouse/mouse.talon
redo | key(ctrl-y) | global_customisations.talon
reinforce | key(r:10) | games/company_of_heroes_2.talon
reinforce first | mouse_move(1820, 505) ⏎     sleep(100ms) ⏎     mouse_click(0) | games/gates_of_hell.talon
release shift | key(shift:up) | games/company_of_heroes_2.talon
reload | key(y) | games/gates_of_hell.talon
remove last space | key(ctrl-left) ⏎     sleep(100ms) ⏎     key(backspace) ⏎     sleep(100ms) ⏎     key(end) | global_customisations.talon
repair | key(shift-r) | games/gates_of_hell.talon
reset camera | key(backspace) | games/company_of_heroes_2.talon
reset camera | key(ctrl-alt-o) | games/last_train_home.talon
reset zoom | key(ctrl-alt-z) | games/last_train_home.talon
restore [window] | key(alt-space) ⏎     sleep(400ms) ⏎     key(r) | global_customisations.talon
retreat | key(u) ⏎     sleep(30ms) ⏎     mouse_click(0) | games/company_of_heroes_2.talon
reverse | key(u) ⏎     sleep(30ms) ⏎     mouse_click(0) | games/company_of_heroes_2.talon
right <number_small> items | key(shift-right) ⏎     repeat(number_small-1) | custom_voice_coding/global_code_writing_helper.talon
right <user.number_signed_small> (click | position_x = user.query_mouse_position_x() ⏎     position_y = user.query_mouse_position_y() ⏎     mouse_move(position_x + number_signed_small, position_y) ⏎     mouse_click(0) | mouse/mouse.talon
right card | mouse_move(1102, 800) ⏎     sleep(30ms) ⏎     mouse_click(0) | games/solitaire_and_casual_games.talon
right mouse down | user.mouse_drag(1) | mouse/mouse.talon
right select | key(ctrl-shift-right) | custom_voice_coding/global_code_writing_helper.talon
righty | # close zoom if open ⏎     tracking.zoom_cancel() ⏎     mouse_click(1) ⏎     # close the mouse grid if open ⏎     user.grid_close() | mouse/mouse.talon
rocket | key(f4) | games/gates_of_hell.talon
rotate left | key(alt:down) ⏎     position_x = user.query_mouse_position_x() ⏎     position_y = user.query_mouse_position_y() ⏎     adjustment = 8000 ⏎     sleep(300ms) ⏎     mouse_move(position_x + adjustment , position_y) ⏎     sleep(300ms) ⏎     key(alt:up) | games/company_of_heroes_2.talon
rotate left | key(,) | games/gates_of_hell.talon
rotate left | key(e) | games/last_train_home.talon
rotate right | key(alt:down) ⏎     position_x = user.query_mouse_position_x() ⏎     position_y = user.query_mouse_position_y() ⏎     adjustment = 8000 ⏎     sleep(300ms) ⏎     mouse_move(position_x - adjustment , position_y) ⏎     sleep(300ms) ⏎     key(alt:up) | games/company_of_heroes_2.talon
rotate right | key(q) | games/last_train_home.talon
rotate small | key(alt:down) ⏎     position_x = user.query_mouse_position_x() ⏎     position_y = user.query_mouse_position_y() ⏎     adjustment = 100 ⏎     sleep(300ms) ⏎     mouse_move(position_x - adjustment , position_y) ⏎     sleep(300ms) ⏎     key(alt:up) | games/company_of_heroes_2.talon
rotate write | key(.) | games/gates_of_hell.talon
save [game] | key(f5) | games/colbot.talon
save game | key(f5) | games/last_train_home.talon
score table | key(tab) | games/gates_of_hell.talon
screen <user.number_key>+ | user.grid_select_screen(2) ⏎     user.grid_activate() ⏎     user.grid_narrow_list(number_key_list) | mouse/mouse.talon
screenshot | key(sysrq) | games/gates_of_hell.talon
script <user.text> | result=user.get_result_from_open_ai(text,"") ⏎     insert(result) | core/talon_helpers/experimental_service.talon
search list <user.text> | user.run_application_voice_admin_windows_forms(text) | custom_voice_coding/global_code_writing_helper.talon
search old list <user.text> | user.run_application_search_intellisense(text) | custom_voice_coding/global_code_writing_helper.talon
select and copy | key(ctrl-a) ⏎     sleep(100ms) ⏎     key(ctrl-c) ⏎     sleep(100ms) | global_customisations.talon
select box | position_x = user.query_mouse_position_x() ⏎     position_y = user.query_mouse_position_y() ⏎     user.mouse_drag(0) ⏎     sleep(100ms) ⏎     mouse_move(position_x + 500, position_y + 500) ⏎     sleep(500ms) ⏎     mouse_click(0) | games/last_train_home.talon
select rest of line | key(shift-end) | global_customisations.talon
selection circle | key(j) | games/gates_of_hell.talon
separate squad | key(k) | games/gates_of_hell.talon
sequel {user.sql_keywords} | insert(user.sql_keywords) | custom_voice_coding/global_code_writing_helper.talon
settings() | #user.model_temperature = 0.6 | settings_custom.talon
settings() | # Stop continuous scroll/gaze scroll with a pop ⏎     user.mouse_enable_pop_stops_scroll = false ⏎     # Stop pop click with 'control mouse' mode ⏎     user.mouse_enable_pop_click = 0 ⏎     # Stop mouse scroll down using hiss noise ⏎     user.mouse_enable_hiss_scroll = false | sleep_mode.talon
settings() | # Echo the subtitles from talon back via tts ⏎     user.echo_dictation = false | tts_settings.talon
settings() | # Stop continuous scroll/gaze scroll with a pop ⏎     user.mouse_enable_pop_stops_scroll = false ⏎     # Stop pop click with 'control mouse' mode ⏎     user.mouse_enable_pop_click = 0 ⏎     # Stop mouse scroll down using hiss noise ⏎     user.mouse_enable_hiss_scroll = false | custom_voice_coding/global_code_writing_helper.talon
settings() | user.mode_indicator_show = 0 ⏎     # Choose how pop click should work in 'control mouse' mode ⏎     # 0 = off ⏎     # 1 = on with eyetracker but not zoom mouse mode ⏎     # 2 = on but not with zoom mouse mode ⏎     user.mouse_enable_pop_click = 0 ⏎     key_hold = 32 ⏎     # Zoom Mouse Options ⏎     tracking.zoom_live = true ⏎     tracking.zoom_height = 300 ⏎     tracking.zoom_width = 300 ⏎     tracking.zoom_scale = 4 | games/colbot.talon
settings() | user.mode_indicator_show = 0 ⏎     # Choose how pop click should work in 'control mouse' mode ⏎     # 0 = off ⏎     # 1 = on with eyetracker but not zoom mouse mode ⏎     # 2 = on but not with zoom mouse mode ⏎     user.mouse_enable_pop_click = 0 ⏎     key_hold = 32 ⏎     # Zoom Mouse Options ⏎     tracking.zoom_live = true ⏎     tracking.zoom_height = 300 ⏎     tracking.zoom_width = 300 ⏎     tracking.zoom_scale = 5 | games/company_of_heroes_2.talon
settings() | user.mode_indicator_show = 0 ⏎     # Choose how pop click should work in 'control mouse' mode ⏎     # 0 = off ⏎     # 1 = on with eyetracker but not zoom mouse mode ⏎     # 2 = on but not with zoom mouse mode ⏎     user.mouse_enable_pop_click = 0 ⏎     key_hold = 32 | games/gates_of_hell.talon
settings() | user.mode_indicator_show = 0 ⏎     user.mouse_enable_pop_click = 0 ⏎     key_hold = 50 | games/last_train_home.talon
settings() | user.mode_indicator_show = 0 ⏎     user.mouse_enable_pop_click = 0 ⏎     key_hold = 50 | games/sanctus_reach.talon
settings() | user.mode_indicator_show = 0 ⏎     user.mouse_enable_pop_click = 0 ⏎     key_hold = 50 | games/there_came_an_echo.talon
settings() | user.clipboard_manager_max_rows = 26 | plugins/clipboard_manager/clipboard_manager.talon
settings() | # Don't show mode indicator by default ⏎     user.mode_indicator_show = false ⏎     # 30pixels diameter ⏎     user.mode_indicator_size = 30 ⏎     # Center horizontally ⏎     user.mode_indicator_x = 0.5 ⏎     # Align top ⏎     user.mode_indicator_y = 0.9 ⏎     # Slightly transparent ⏎     user.mode_indicator_color_alpha = 1 ⏎     # Grey gradient ⏎     user.mode_indicator_color_gradient = 1 ⏎     # Black color for when the microphone is muted (set to "None") ⏎     user.mode_indicator_color_mute = "000000" ⏎     # Grey color for sleep mode ⏎     user.mode_indicator_color_sleep = "e3372e" ⏎     # Gold color for dictation mode ⏎     user.mode_indicator_color_dictation = "e62b86" ⏎     # MediumSeaGreen color for mixed mode ⏎     user.mode_indicator_color_mixed = "3cb371" ⏎     # CornflowerBlue color for command mode ⏎     user.mode_indicator_color_command = "00a54e" ⏎     # GhostWhite color for other modes ⏎     user.mode_indicator_color_other = "f8f8ff" | core/talon_helpers/mode_indicator.talon
seven attack | key(7) ⏎     sleep(30ms) ⏎     key(a) ⏎     sleep(30ms) ⏎     mouse_click(0) | games/company_of_heroes_2.talon
seven back | key(7) ⏎     sleep(30ms) ⏎     key(u) ⏎     sleep(30ms) ⏎     mouse_click(0) | games/company_of_heroes_2.talon
seven o'clock | user.mouse_drag(1) ⏎     sleep(100ms) ⏎     position_x = user.query_mouse_position_x() ⏎     position_y = user.query_mouse_position_y() ⏎     mouse_move(position_x - 66, position_y + 132) ⏎     sleep(700ms) ⏎     user.mouse_drag_end() | games/company_of_heroes_2.talon
sharp <user.text> | user.run_application_csharp_database_command(text) | custom_voice_coding/global_code_writing_helper.talon
shortcut guide | key(super-shift-/) | global_customisations.talon
show letters | key(ctrl-super-alt-m) | global_customisations.talon
six attack | key(6) ⏎     sleep(30ms) ⏎     key(a) ⏎     sleep(30ms) ⏎     mouse_click(0) | games/company_of_heroes_2.talon
six back | key(6) ⏎     sleep(30ms) ⏎     key(u) ⏎     sleep(30ms) ⏎     mouse_click(0) | games/company_of_heroes_2.talon
six o'clock | user.mouse_drag(1) ⏎     sleep(100ms) ⏎     position_x = user.query_mouse_position_x() ⏎     position_y = user.query_mouse_position_y() ⏎     mouse_move(position_x, position_y + 300) ⏎     sleep(900ms) ⏎     user.mouse_drag_end() | games/company_of_heroes_2.talon
slot fifth | position_x = user.query_mouse_position_x() ⏎     position_y = user.query_mouse_position_y() ⏎     mouse_move(852, 859) ⏎     sleep(30ms) ⏎     mouse_click(0) ⏎     mouse_move(position_x , position_y ) | games/company_of_heroes_2.talon
slot first | position_x = user.query_mouse_position_x() ⏎     position_y = user.query_mouse_position_y() ⏎     mouse_move(522, 862) ⏎     sleep(30ms) ⏎     mouse_click(0) ⏎     mouse_move(position_x , position_y ) | games/company_of_heroes_2.talon
slot fourth | position_x = user.query_mouse_position_x() ⏎     position_y = user.query_mouse_position_y() ⏎     mouse_move(766, 856) ⏎     sleep(30ms) ⏎     mouse_click(0) ⏎     mouse_move(position_x , position_y ) | games/company_of_heroes_2.talon
slot second | position_x = user.query_mouse_position_x() ⏎     position_y = user.query_mouse_position_y() ⏎     mouse_move(602, 853) ⏎     sleep(30ms) ⏎     mouse_click(0) ⏎     mouse_move(position_x , position_y ) | games/company_of_heroes_2.talon
slot third | position_x = user.query_mouse_position_x() ⏎     position_y = user.query_mouse_position_y() ⏎     mouse_move(680, 852) ⏎     sleep(30ms) ⏎     mouse_click(0) ⏎     mouse_move(position_x , position_y ) | games/company_of_heroes_2.talon
slowdown | key(f6) | games/colbot.talon
smoke | key(f3) | games/gates_of_hell.talon
smokescreen | mouse_click(4) | games/gates_of_hell.talon
snip folder desktop | insert("C:\\Users\\MPhil\\Desktop") | core/global.talon
snip folder desktop pictures | insert("C:\\DesktopPictures") | core/global.talon
snip folder downloads | insert("C:\\Users\\MPhil\\Downloads") | core/global.talon
snip folder local documents | insert("C:\\Users\\MPhil\\Documents") | core/global.talon
snip folder one drive documents | insert("C:\\Users\\MPhil\\OneDrive\\Documents") | core/global.talon
snip folder pictures | insert("C:\\Users\\MPhil\\OneDrive\\Pictures") | core/global.talon
snip folder repose | insert("C:\\Users\\MPhil\\source\\repos") | core/global.talon
snipping tool | key(super-shift-s) | core/global.talon
south | key(down) | games/company_of_heroes_2.talon
spin down | user.mouse_scroll_down_continuous() | mouse/mouse.talon
spin up | user.mouse_scroll_up_continuous() | mouse/mouse.talon
sprint | key(lshift) | games/gates_of_hell.talon
start recording | user.switcher_focus("obs64.exe") ⏎     key(ctrl-super-shift-r) ⏎     sleep(50ms) ⏎     app.notify('Running OBS record command', 'Message From Talon Voice', 'TALON', true) | global_customisations.talon
start twitch bot | user.system_command("c:/Users/MPhil/source/repos/TwitchBot01/launch-bot.bat") | core/global.talon
stop | key(s) | games/company_of_heroes_2.talon
stop | user.mouse_scroll_stop() | mouse/mouse.talon
stop recording | user.switcher_focus("obs64.exe") ⏎     key(ctrl-super-shift-s) ⏎     sleep(50ms) ⏎     app.notify('Running OBS stop record command', 'Message From Talon Voice', 'TALON', true) | global_customisations.talon
support | key(f3) | games/company_of_heroes_2.talon
switch [window] | key(alt-tab) | global_customisations.talon
switch ammo | key(space) | games/gates_of_hell.talon
switch weapon | key(.) | games/gates_of_hell.talon
tab backwards | key(shift-tab) | global_customisations.talon
tab clothes | user.tab_close_wrapper() | core/global.talon
tabby | key(tab) | global_customisations.talon
tag | user.clipboard_manager | plugins/clipboard_manager/clipboard_manager_open.talon
tag() | user.talon_hud_automatic_hide | games/company_of_heroes_2.talon
take [all] | mouse_move(60, 40) ⏎     sleep(30ms) ⏎     user.mouse_drag(0) ⏎     sleep(30ms) ⏎     mouse_move(1670, 250) ⏎     sleep(30ms) ⏎     mouse_move(1670, 979) ⏎     sleep(30ms) ⏎     mouse_click(0) | games/company_of_heroes_2.talon
take [all] | mouse_move(10, 10) ⏎     sleep(30ms) ⏎     user.mouse_drag(0) ⏎     sleep(30ms) ⏎     mouse_move(1670, 250) ⏎     sleep(30ms) ⏎     mouse_move(1670, 979) ⏎     sleep(30ms) ⏎     mouse_click(0) | games/gates_of_hell.talon
take eight | key(8) | games/gates_of_hell.talon
take five | key(5) | games/gates_of_hell.talon
take four | key(4) | games/gates_of_hell.talon
take line | key(end) ⏎     sleep(50ms) ⏎     key(shift-home) | global_customisations.talon
take nine | key(9) | games/gates_of_hell.talon
take one | key(1) | games/gates_of_hell.talon
take seven | key(7) | games/gates_of_hell.talon
take six | key(6) | games/gates_of_hell.talon
take three | key(3) | games/gates_of_hell.talon
take two | key(2) | games/gates_of_hell.talon
takeoff | key(shift) | games/colbot.talon
talon copy <user.text> actions | clip.set_text(user.talon_get_actions_search(text)) | core/talon_helpers/talon_helpers.talon
talon copy actions | clip.set_text(user.talon_get_actions()) | core/talon_helpers/talon_helpers.talon
talon copy actions long | clip.set_text(user.talon_get_actions_long()) | core/talon_helpers/talon_helpers.talon
talon copy captures | clip.set_text(user.talon_get_captures()) | core/talon_helpers/talon_helpers.talon
talon copy commands | user.help_copy_all_commands() | core/talon_helpers/talon_helpers.talon
talon copy core | clip.set_text(user.talon_get_core()) | core/talon_helpers/talon_helpers.talon
talon copy modes | clip.set_text(user.talon_get_modes()) | core/talon_helpers/talon_helpers.talon
talon copy name | clip.set_text(app.name()) | core/talon_helpers/talon_helpers.talon
talon copy python context | user.talon_add_context_clipboard_python() | core/talon_helpers/talon_helpers.talon
talon copy tags | clip.set_text(user.talon_get_tags()) | core/talon_helpers/talon_helpers.talon
talon copy title | clip.set_text(win.title()) | core/talon_helpers/talon_helpers.talon
talon create app context | user.talon_create_app_context() | core/talon_helpers/talon_helpers.talon
talon lists show [<user.text>] | user.show_talon_lists(user.text or "") | core/global.talon
talon menu | key(super-b) ⏎     sleep(50ms) ⏎     key(right) ⏎     sleep(50ms) ⏎     key(menu) ⏎     sleep(50ms) ⏎     key(down:4) ⏎     sleep(50ms) ⏎     key(right) | global_customisations.talon
talon open home | menu.open_talon_home() | core/talon_helpers/talon_helpers.talon
talon open repl | menu.open_repl() | core/talon_helpers/talon_helpers.talon
talon print <user.text> actions | print(" \n{user.talon_get_actions_search(text)}") | core/talon_helpers/talon_helpers.talon
talon print actions | print(" \n{user.talon_get_actions()}") | core/talon_helpers/talon_helpers.talon
talon print actions long | print(" \n{user.talon_get_actions_long()}") | core/talon_helpers/talon_helpers.talon
talon print captures | print(" \n{user.talon_get_captures()}") | core/talon_helpers/talon_helpers.talon
talon print context | name = app.name() ⏎     executable = app.executable() ⏎     title = win.title() ⏎     print("Name: {name}") ⏎     print("Executable: {executable}") ⏎     print("Title: {title}") | core/talon_helpers/talon_helpers.talon
talon print core | print(" \n{user.talon_get_core()}") | core/talon_helpers/talon_helpers.talon
talon print list problems | user.talon_print_list_problems() | core/talon_helpers/talon_helpers.talon
talon print lists | print(" \n{user.talon_get_lists()}") | core/talon_helpers/talon_helpers.talon
talon print modes | print(" \n{user.talon_get_modes()}") | core/talon_helpers/talon_helpers.talon
talon print name | print(app.name()) | core/talon_helpers/talon_helpers.talon
talon print tags | print(" \n{user.talon_get_tags()}") | core/talon_helpers/talon_helpers.talon
talon print title | print(win.title()) | core/talon_helpers/talon_helpers.talon
talon relaunch | talon_relaunch() | global_customisations.talon
talon sim <phrase>$ | user.talon_sim_phrase(phrase) | core/talon_helpers/talon_helpers.talon
taskbar <user.screen_step_two> <user.number_signed_small> | mouse_move(screen_step_two, 1050) ⏎     position_x = user.query_mouse_position_x() ⏎     position_y = user.query_mouse_position_y() ⏎     adjustment = number_signed_small * 5 ⏎     mouse_move(position_x + adjustment, position_y) ⏎     mouse_click(0) | mouse/mouse.talon
taskbar toggle | user.toggle_taskbar() | core/global.talon
team chat | key(z) | games/gates_of_hell.talon
team marker | key(n) | games/gates_of_hell.talon
ten o'clock | user.mouse_drag(1) ⏎     sleep(100ms) ⏎     position_x = user.query_mouse_position_x() ⏎     position_y = user.query_mouse_position_y() ⏎     mouse_move(position_x - 132, position_y - 66) ⏎     sleep(700ms) ⏎     user.mouse_drag_end() | games/company_of_heroes_2.talon
test email | insert("firstlastname@domain.co.uk") | global_customisations.talon
that) | # Select all text and runs a model prompt on the text and pastes the results BELOW. ⏎     key(ctrl-a) ⏎     text = edit.selected_text() ⏎     result = user.gpt_apply_prompt("", text, "") ⏎     key(down) ⏎     sleep(100ms) ⏎     key(enter) ⏎     key(enter) ⏎     user.paste(result) | core/talon_helpers/gpt.talon
three attack | key(3) ⏎     sleep(30ms) ⏎     key(a) ⏎     sleep(30ms) ⏎     mouse_click(0) | games/company_of_heroes_2.talon
three back | key(3) ⏎     sleep(30ms) ⏎     key(u) ⏎     sleep(30ms) ⏎     mouse_click(0) | games/company_of_heroes_2.talon
three o'clock | sleep(100ms) ⏎     user.mouse_drag(1) ⏎     sleep(100ms) ⏎     position_x = user.query_mouse_position_x() ⏎     position_y = user.query_mouse_position_y() ⏎     mouse_move(position_x + 300, position_y) ⏎     sleep(700ms) ⏎     user.mouse_drag_end() | games/company_of_heroes_2.talon
Toggle control mode | key(t) | games/gates_of_hell.talon
Toggle stance | key(lctrl) | games/gates_of_hell.talon
Toggle throw weapon | key(/) | games/gates_of_hell.talon
Toggle weapon | key(/) | games/gates_of_hell.talon
total <user.prose>$ | user.insert_formatted(prose, "CAPITALIZE_ALL_WORDS") | core/global.talon
touch eighth | position_x = user.query_mouse_position_x() ⏎     position_y = user.query_mouse_position_y() ⏎     mouse_move(1500, 120) ⏎     sleep(30ms) ⏎     mouse_click(0) ⏎     mouse_move(position_x , position_y ) | games/company_of_heroes_2.talon
touch fifth | position_x = user.query_mouse_position_x() ⏎     position_y = user.query_mouse_position_y() ⏎     mouse_move(1660, 120) ⏎     sleep(30ms) ⏎     mouse_click(0) ⏎     mouse_move(position_x , position_y ) | games/company_of_heroes_2.talon
touch first | position_x = user.query_mouse_position_x() ⏎     position_y = user.query_mouse_position_y() ⏎     mouse_move(1890, 115) ⏎     sleep(30ms) ⏎     mouse_click(0) ⏎     mouse_move(position_x , position_y ) | games/company_of_heroes_2.talon
touch fourth | position_x = user.query_mouse_position_x() ⏎     position_y = user.query_mouse_position_y() ⏎     mouse_move(1720, 120) ⏎     sleep(30ms) ⏎     mouse_click(0) ⏎     mouse_move(position_x , position_y ) | games/company_of_heroes_2.talon
touch ninth | position_x = user.query_mouse_position_x() ⏎     position_y = user.query_mouse_position_y() ⏎     mouse_move(1440, 120) ⏎     sleep(30ms) ⏎     mouse_click(0) ⏎     mouse_move(position_x , position_y ) | games/company_of_heroes_2.talon
touch second | position_x = user.query_mouse_position_x() ⏎     position_y = user.query_mouse_position_y() ⏎     mouse_move(1830, 120) ⏎     sleep(30ms) ⏎     mouse_click(0) ⏎     mouse_move(position_x , position_y ) | games/company_of_heroes_2.talon
touch seventh | position_x = user.query_mouse_position_x() ⏎     position_y = user.query_mouse_position_y() ⏎     mouse_move(1550, 120) ⏎     sleep(30ms) ⏎     mouse_click(0) ⏎     mouse_move(position_x , position_y ) | games/company_of_heroes_2.talon
touch sixth | position_x = user.query_mouse_position_x() ⏎     position_y = user.query_mouse_position_y() ⏎     mouse_move(1610, 120) ⏎     sleep(30ms) ⏎     mouse_click(0) ⏎     mouse_move(position_x , position_y ) | games/company_of_heroes_2.talon
touch third | position_x = user.query_mouse_position_x() ⏎     position_y = user.query_mouse_position_y() ⏎     mouse_move(1780, 120) ⏎     sleep(30ms) ⏎     mouse_click(0) ⏎     mouse_move(position_x , position_y ) | games/company_of_heroes_2.talon
touch) | vertical = screen_step_vertical + 30 ⏎     mouse_move(screen_step_one, vertical) ⏎     mouse_click(0) | mouse/mouse.talon
touch) | mouse_move(screen_step_two, screen_step_vertical_monitor_two) ⏎     mouse_click(0) | mouse/mouse.talon
touch) | position_x = user.query_mouse_position_x() ⏎     position_y = user.query_mouse_position_y() ⏎     mouse_move(position_x - number_signed_small, position_y) ⏎     mouse_click(0) | mouse/mouse.talon
touch) | position_x = user.query_mouse_position_x() ⏎     position_y = user.query_mouse_position_y() ⏎     mouse_move(position_x + number_signed_small, position_y) ⏎     mouse_click(0) | mouse/mouse.talon
touch) | position_x = user.query_mouse_position_x() ⏎     position_y = user.query_mouse_position_y() ⏎     mouse_move(position_x, position_y - number_signed_small) ⏎     mouse_click(0) | mouse/mouse.talon
touch) | position_x = user.query_mouse_position_x() ⏎     position_y = user.query_mouse_position_y() ⏎     mouse_move(position_x, position_y + number_signed_small) ⏎     mouse_click(0) | mouse/mouse.talon
trench | key(b) ⏎     sleep(20ms) ⏎     key(t) ⏎     sleep(20ms) ⏎     mouse_click(0) | games/company_of_heroes_2.talon
twelve o'clock | user.mouse_drag(1) ⏎     sleep(100ms) ⏎     position_x = user.query_mouse_position_x() ⏎     position_y = user.query_mouse_position_y() ⏎     mouse_move(position_x, position_y - 300) ⏎     sleep(700ms) ⏎     user.mouse_drag_end() | games/company_of_heroes_2.talon
twelve o'clock | sleep(100ms) ⏎     user.mouse_drag(1) ⏎     sleep(100ms) ⏎     position_x = user.query_mouse_position_x() ⏎     position_y = user.query_mouse_position_y() ⏎     mouse_move(position_x, position_y - 200) | games/gates_of_hell.talon
two attack | key(2) ⏎     sleep(30ms) ⏎     key(a) ⏎     sleep(30ms) ⏎     mouse_click(0) | games/company_of_heroes_2.talon
two back | key(2) ⏎     sleep(30ms) ⏎     key(u) ⏎     sleep(30ms) ⏎     mouse_click(0) | games/company_of_heroes_2.talon
two o'clock | user.mouse_drag(1) ⏎     sleep(100ms) ⏎     position_x = user.query_mouse_position_x() ⏎     position_y = user.query_mouse_position_y() ⏎     mouse_move(position_x + 132, position_y - 66) ⏎     sleep(700ms) ⏎     user.mouse_drag_end() | games/company_of_heroes_2.talon
undo | key(ctrl-z) | global_customisations.talon
undo <user.number_signed_small> | key(ctrl-z) ⏎     repeat(number_signed_small-1) | global_customisations.talon
unit eight | key(8) | games/company_of_heroes_2.talon
unit five | key(5) | games/company_of_heroes_2.talon
unit five | mouse_move(1140, 965) ⏎     sleep(100ms) ⏎     mouse_click(0) | games/last_train_home.talon
unit four | key(4) | games/company_of_heroes_2.talon
unit four | mouse_move(1050, 965) ⏎     sleep(100ms) ⏎     mouse_click(0) | games/last_train_home.talon
unit nine | key(9) | games/company_of_heroes_2.talon
unit one | key(1) | games/company_of_heroes_2.talon
unit one | mouse_move(780, 965) ⏎     sleep(100ms) ⏎     mouse_click(0) | games/last_train_home.talon
unit seven | key(7) | games/company_of_heroes_2.talon
unit six | key(6) | games/company_of_heroes_2.talon
unit three | key(3) | games/company_of_heroes_2.talon
unit three | mouse_move(960, 965) ⏎     sleep(100ms) ⏎     mouse_click(0) | games/last_train_home.talon
unit two | key(2) | games/company_of_heroes_2.talon
unit two | mouse_move(870, 965) ⏎     sleep(100ms) ⏎     mouse_click(0) | games/last_train_home.talon
unit zero | key(0) | games/company_of_heroes_2.talon
units | mouse_move(1207, 1017) ⏎     sleep(100ms) ⏎     mouse_click(0) | games/last_train_home.talon
unload | key(g) | games/gates_of_hell.talon
vehicle fifth | position_x = user.query_mouse_position_x() ⏎     position_y = user.query_mouse_position_y() ⏎     mouse_move(1660, 230) ⏎     sleep(30ms) ⏎     mouse_click(0) ⏎     mouse_move(position_x , position_y ) | games/company_of_heroes_2.talon
vehicle first | position_x = user.query_mouse_position_x() ⏎     position_y = user.query_mouse_position_y() ⏎     mouse_move(1885, 225) ⏎     sleep(30ms) ⏎     mouse_click(0) ⏎     mouse_move(position_x , position_y ) | games/company_of_heroes_2.talon
vehicle fourth | position_x = user.query_mouse_position_x() ⏎     position_y = user.query_mouse_position_y() ⏎     mouse_move(1720, 230) ⏎     sleep(30ms) ⏎     mouse_click(0) ⏎     mouse_move(position_x , position_y ) | games/company_of_heroes_2.talon
vehicle second | position_x = user.query_mouse_position_x() ⏎     position_y = user.query_mouse_position_y() ⏎     mouse_move(1835, 230) ⏎     sleep(30ms) ⏎     mouse_click(0) ⏎     mouse_move(position_x , position_y ) | games/company_of_heroes_2.talon
vehicle seventh | position_x = user.query_mouse_position_x() ⏎     position_y = user.query_mouse_position_y() ⏎     mouse_move(1540, 230) ⏎     sleep(30ms) ⏎     mouse_click(0) ⏎     mouse_move(position_x , position_y ) | games/company_of_heroes_2.talon
vehicle sixth | position_x = user.query_mouse_position_x() ⏎     position_y = user.query_mouse_position_y() ⏎     mouse_move(1600, 230) ⏎     sleep(30ms) ⏎     mouse_click(0) ⏎     mouse_move(position_x , position_y ) | games/company_of_heroes_2.talon
vehicle third | position_x = user.query_mouse_position_x() ⏎     position_y = user.query_mouse_position_y() ⏎     mouse_move(1785, 230) ⏎     sleep(30ms) ⏎     mouse_click(0) ⏎     mouse_move(position_x , position_y ) | games/company_of_heroes_2.talon
vision mode | key(0) | games/gates_of_hell.talon
voice typing | speech.disable() ⏎     sleep(20ms) ⏎     key(super-h) | global_customisations.talon
wall | key(b) ⏎     sleep(20ms) ⏎     key(w) ⏎     sleep(20ms) ⏎     mouse_click(0) | games/company_of_heroes_2.talon
we'll stop | user.mouse_scroll_stop() | mouse/mouse.talon
weapon eight | key(8) | games/gates_of_hell.talon
weapon five | key(5) | games/gates_of_hell.talon
weapon four | key(4) | games/gates_of_hell.talon
weapon one | key(1) | games/gates_of_hell.talon
weapon seven | key(7) | games/gates_of_hell.talon
weapon six | key(6) | games/gates_of_hell.talon
weapon three | key(3) | games/gates_of_hell.talon
weapon two | key(2) | games/gates_of_hell.talon
west | key(left) | games/company_of_heroes_2.talon
what can I say | user.run_application_voice_admin_windows_forms_launcher("Talon Search") | custom_voice_coding/global_code_writing_helper.talon
what can I say new | user.launch_talon_voice_command_server() | custom_voice_coding/global_code_writing_helper.talon
will stop | user.mouse_scroll_stop() | mouse/mouse.talon
win.title | Solitaire & Casual Games | games/solitaire_and_casual_games.talon
window [monitor] switch | key(super-shift-left) | global_customisations.talon
windows start <user.text> | key(super) ⏎     sleep(300ms) ⏎     insert(text) | global_customisations.talon
zero attack | key(0) ⏎     sleep(30ms) ⏎     key(a) ⏎     sleep(30ms) ⏎     mouse_click(0) | games/company_of_heroes_2.talon
zero back | key(0) ⏎     sleep(30ms) ⏎     key(u) ⏎     sleep(30ms) ⏎     mouse_click(0) | games/company_of_heroes_2.talon
ziggy <user.text> | #do nothing calling amazon Echo device | global_customisations.talon
zoom | user.mouse_scroll_up() | games/company_of_heroes_2.talon
zoom | key(+) | games/gates_of_hell.talon
zoom | key(keypad_8) | games/sanctus_reach.talon
zoom | key(keypad_8) | games/there_came_an_echo.talon
zoom [in] | key(keypad_plus) | games/colbot.talon
zoom [in] | mouse_move(40, 1035) ⏎     sleep(100ms) ⏎     mouse_click(0) | games/last_train_home.talon
zoom it | key(super-ctrl-f8) | core/global.talon
zoom out | key(keypad_minus) | games/colbot.talon
zoom out | user.mouse_scroll_down() | games/company_of_heroes_2.talon
zoom out | key(numpad_minus) | games/gates_of_hell.talon
zoom out | mouse_move(80, 1035) ⏎     sleep(100ms) ⏎     mouse_click(0) | games/last_train_home.talon
zoom out | key(keypad_2) | games/sanctus_reach.talon
zoom out | key(keypad_2) | games/there_came_an_echo.talon
zoom right in | user.mouse_scroll_up() ⏎     sleep(30ms) ⏎     user.mouse_scroll_up() ⏎     sleep(30ms) ⏎     user.mouse_scroll_up() ⏎     sleep(30ms) ⏎     user.mouse_scroll_up() ⏎     sleep(30ms) ⏎     user.mouse_scroll_up() ⏎     sleep(30ms) ⏎     user.mouse_scroll_up() ⏎     sleep(30ms) ⏎     user.mouse_scroll_up() ⏎     sleep(30ms) ⏎     user.mouse_scroll_up() ⏎     sleep(30ms) ⏎     user.mouse_scroll_up() ⏎     sleep(30ms) ⏎     user.mouse_scroll_up() ⏎     sleep(30ms) ⏎     user.mouse_scroll_up() ⏎     sleep(30ms) ⏎     user.mouse_scroll_up() ⏎     sleep(30ms) ⏎     user.mouse_scroll_up() | games/company_of_heroes_2.talon
zoom right out | user.mouse_scroll_down() ⏎     sleep(30ms) ⏎     user.mouse_scroll_down() ⏎     sleep(30ms) ⏎     user.mouse_scroll_down() ⏎     sleep(30ms) ⏎     user.mouse_scroll_down() ⏎     sleep(30ms) ⏎     user.mouse_scroll_down() ⏎     sleep(30ms) ⏎     user.mouse_scroll_down() ⏎     sleep(30ms) ⏎     user.mouse_scroll_down() ⏎     sleep(30ms) ⏎     user.mouse_scroll_down() ⏎     sleep(30ms) ⏎     user.mouse_scroll_down() ⏎     sleep(30ms) ⏎     user.mouse_scroll_down() ⏎     sleep(30ms) ⏎     user.mouse_scroll_down() ⏎     sleep(30ms) ⏎     user.mouse_scroll_down() ⏎     sleep(30ms) ⏎     user.mouse_scroll_down() ⏎     sleep(30ms) ⏎     user.mouse_scroll_down() ⏎     sleep(30ms) ⏎     user.mouse_scroll_down() ⏎     sleep(30ms) ⏎     user.mouse_scroll_down() | games/company_of_heroes_2.talon
{user.naughty_words} | app.notify("That's quite enough of that", "More Money for the Sware Jar!", "TALON", true) | global_customisations.talon
{user.snippet_language} {user.snippet_category} | user.run_application_voice_admin_windows_forms_language_category(snippet_language, snippet_category) | custom_voice_coding/global_code_writing_helper.talon
