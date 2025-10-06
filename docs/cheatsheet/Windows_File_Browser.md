# Talon Cheatsheet — Windows File Browser

Command | Action | Source
--- | --- | ---
app | windows_file_browser | apps/explorer.talon
app | explorer.exe | apps/explorer.talon
bottom of window | key(end) | apps/explorer.talon
close window | key(ctrl-w) | apps/explorer.talon
collapse folder | key(num_lock--) | apps/explorer.talon
collapse selection | key(left) | apps/explorer.talon
copy the path | key(ctrl-shift-c) | apps/explorer.talon
expand folder | key(num_lock-+) | apps/explorer.talon
expand selection | key(right) | apps/explorer.talon
go back | key(backspace) | apps/explorer.talon
go downloads | user.file_manager_open_directory("C:\\Users\\MPhil\\Downloads") | apps/explorer.talon
go local documents | user.file_manager_open_directory("C:\\Users\\MPhil\\Documents") | apps/explorer.talon
go one drive documents | user.file_manager_open_directory("C:\\Users\\MPhil\\OneDrive\\Documents") | apps/explorer.talon
go pictures | user.file_manager_open_directory("C:\\Users\\MPhil\\OneDrive\\Pictures") | apps/explorer.talon
new folder | key(ctrl-shift-n) | apps/explorer.talon
new window | key(ctrl-n) | apps/explorer.talon
next folder | key(alt-right) | apps/explorer.talon
open in code | key(alt-f) ⏎     sleep(400ms) ⏎     key(i) | apps/explorer.talon
open in terminal | key(alt-f) ⏎     sleep(400ms) ⏎     key(t) | apps/explorer.talon
open in Visual Studio code | # Copy current path from Explorer address bar ⏎     key(f4) ⏎     key(ctrl-c) ⏎     key(escape) ⏎     path = clip.text() ⏎     user.open_path_in_code(path) | apps/explorer.talon
parent folder | key(alt-up) | apps/explorer.talon
preview pane | key(alt-p) | apps/explorer.talon
previous folder | key(alt-left) | apps/explorer.talon
properties | key(alt-enter) | apps/explorer.talon
search box | key(ctrl-e) | apps/explorer.talon
show parent folders | key(ctrl-shift-e) | apps/explorer.talon
show sub folders | key(num_lock-*) | apps/explorer.talon
tag() | user.file_manager | apps/explorer.talon
toggle maximize | key(f11) | apps/explorer.talon
top of window | key(home) | apps/explorer.talon
touch top file | # Touch the top file in the explorer on monitor two only ⏎     mouse_move(2220, 145) ⏎     mouse_click(0) | apps/explorer.talon
