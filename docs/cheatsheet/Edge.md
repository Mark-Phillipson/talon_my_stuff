# Talon Cheatsheet — Edge

Command | Action | Source
--- | --- | ---
(close tab) | key(ctrl-w) | apps/edge.talon
(closed tab) | key(ctrl-w) | apps/edge.talon
(find again) | key(f3) | apps/edge.talon
(hunt next) | key(f3) | apps/edge.talon
[toggle] breakpoint | key(ctrl-b) | apps/edge.talon
^(realtime copy)+$ | key(alt-t) ⏎     sleep(100ms) ⏎     key(ctrl-a) ⏎     sleep(100ms) ⏎     key(ctrl-c) | realtime.talon
^(realtime copy)+$ | key(alt-t) ⏎     sleep(100ms) ⏎     key(ctrl-a) ⏎     sleep(100ms) ⏎     key(ctrl-c) | apps/edge.talon
^(realtime paste)+$ | key(alt-t) ⏎     sleep(100ms) ⏎     key(ctrl-a) ⏎     sleep(100ms) ⏎     key(ctrl-c) ⏎     sleep(100ms) ⏎     key(alt-tab) ⏎     sleep(100ms) ⏎     key(ctrl-v) | apps/edge.talon
^(stop realtime and copy)+$ | speech.enable() ⏎     sleep(100ms) ⏎     key(alt-m) ⏎     sleep(100ms) ⏎     key(alt-t) ⏎     sleep(100ms) ⏎     key(ctrl-a) ⏎     sleep(100ms) ⏎     key(ctrl-c) | realtime.talon
^(stop realtime and paste)+$ | speech.enable() ⏎     sleep(100ms) ⏎     key(alt-m) ⏎     sleep(100ms) ⏎     key(alt-t) ⏎     sleep(100ms) ⏎     key(ctrl-a) ⏎     key(ctrl-c) ⏎     sleep(100ms) ⏎     key(alt-tab) ⏎     sleep(100ms) ⏎     key(ctrl-v) | realtime.talon
^(stop realtime)+$ | speech.enable() ⏎     sleep(100ms) ⏎     key(alt-m) | realtime.talon
access custom from | key(ctrl-shift-f) | apps/gmail_edge.talon
align centre | key(ctrl-shift-e) | apps/gmail_edge.talon
align left | key(ctrl-shift-l) | apps/gmail_edge.talon
align right | key(ctrl-shift-r) | apps/gmail_edge.talon
app | Microsoft Edge | development_tools.talon
app | c:\program files (x86)\microsoft\edge\application\msedge.exe | development_tools.talon
app | microsoft_edge | realtime.talon
app | msedge.exe | apps/chat_gpt_shortcuts.talon
app | microsoft_edge | apps/edge.talon
app | microsoft_edge | apps/edge_testing.talon
app | microsoft_edge | apps/fig_jam_page.talon
app | msedge.exe | apps/gmail_edge.talon
app | microsoft_edge | apps/google_sheets.talon
application tab | key(ctrl-shift-e) | development_tools.talon
archive message | key(e) | apps/gmail_edge.talon
ask it | insert("?") ⏎     sleep("20ms") ⏎     key(enter) | apps/chat_gpt_shortcuts.talon
basket | insert("?") ⏎     sleep("20ms") ⏎     key(enter) | apps/chat_gpt_shortcuts.talon
bulleted list | key(ctrl-shift-8) | apps/gmail_edge.talon
carbon copy recipients | key(ctrl-shift-c) | apps/gmail_edge.talon
close dev tools | key(ctrl-shift-i) | development_tools.talon
compose | key(c) | apps/gmail_edge.talon
console evaluate text | key(ctrl-shift-e) | apps/edge.talon
console focus | key(ctrl-l) | apps/edge.talon
console tab | key(ctrl-shift-j) | development_tools.talon
console toggle | key(ctrl-`) | apps/edge.talon
continue | key(f8) | apps/edge.talon
copy code block | key(ctrl-shift-;) | apps/chat_gpt_shortcuts.talon
copy response | key(ctrl-shift-c) | apps/chat_gpt_shortcuts.talon
decrease size | key(ctrl-shift--) | apps/gmail_edge.talon
delete chat | key(ctrl-shift-backspace) | apps/chat_gpt_shortcuts.talon
delete message | key(#) | apps/gmail_edge.talon
destroy drone | insert("!drone -1") ⏎     key(enter) | apps/edge.talon
dev tools | key(ctrl-shift-i) | development_tools.talon
discard draft | key(ctrl-shift-d) | apps/gmail_edge.talon
drone diagonal | insert("!D56") ⏎     sleep(100ms) ⏎     key(enter) ⏎     sleep(1000ms) ⏎     insert("!R55") ⏎     sleep(100ms) ⏎     key(enter) | apps/edge.talon
drone down | insert("!D55") ⏎     sleep(100ms) ⏎     key(enter) | apps/edge.talon
drone left | insert("!L55") ⏎     sleep(100ms) ⏎     key(enter) | apps/edge.talon
drone right | insert("!R55") ⏎     sleep(100ms) ⏎     key(enter) | apps/edge.talon
drone up | insert("!U55") ⏎     sleep(100ms) ⏎     key(enter) | apps/edge.talon
elements tab | key(ctrl-shift-c) | development_tools.talon
focus input | key(shift-esc) | apps/chat_gpt_shortcuts.talon
focus main window | key(shift-esc) | apps/gmail_edge.talon
focus toolbar | key(,) | apps/gmail_edge.talon
frame next | key(ctrl-.) | apps/edge.talon
frame previous | key(ctrl-,) | apps/edge.talon
go [to] bottom | key(ctrl-end) | apps/edge.talon
go [to] top | key(ctrl-home) | apps/edge.talon
go to all mail | key(g) ⏎     sleep(100ms) ⏎     key(a) | apps/gmail_edge.talon
go to contacts | key(g) ⏎     sleep(100ms) ⏎     key(c) | apps/gmail_edge.talon
go to inbox | key(g) ⏎     sleep(100ms) ⏎     key(i) | apps/gmail_edge.talon
go to sent messages | key(g) ⏎     sleep(100ms) ⏎     key(t) | apps/gmail_edge.talon
hard refresh | key(ctrl-shift-r) | apps/edge.talon
hunt this | key(ctrl-f) | apps/edge.talon
increase size | key(ctrl-shift-+) | apps/gmail_edge.talon
insert a link | key(ctrl-k) | apps/gmail_edge.talon
local host chan of custody | user.open_url("https://localhost:44343/") | apps/edge.talon
mark spam | key(!) | apps/gmail_edge.talon
microphone mute | # Google Meet ⏎     key(ctrl-d) | apps/edge.talon
mode | sleep | realtime.talon
network tab | key(ctrl-shift-m) | development_tools.talon
new chat | key(ctrl-shift-o) | apps/chat_gpt_shortcuts.talon
next chat | key(ctrl-.) | apps/gmail_edge.talon
next misspelt word | key(ctrl-') | apps/gmail_edge.talon
next panel | key(ctrl-]) | development_tools.talon
next tab | key(ctrl-tab) | apps/edge.talon
numbered list | key(ctrl-shift-7) | apps/gmail_edge.talon
open spelling suggestions | key(ctrl-m) | apps/gmail_edge.talon
panel next | key(ctrl-]) | apps/edge.talon
panel previous | key(ctrl-[) | apps/edge.talon
pop out chat | key(alt-d right) ⏎     sleep(100ms) ⏎     key(shift-home) ⏎     sleep(100ms) ⏎     key(ctrl-c) ⏎     sleep(100ms) ⏎     key(ctrl-t) ⏎     sleep(200ms) ⏎     key(ctrl-v) ⏎     sleep(100ms) ⏎     insert("/chat") ⏎     sleep(200ms) ⏎     key(enter) ⏎     mimic("tab split") | apps/edge.talon
previous chat | key(ctrl-,) | apps/gmail_edge.talon
previous misspelt word | key(ctrl-;) | apps/gmail_edge.talon
previous panel | key(ctrl-[) | development_tools.talon
previous tab | key(ctrl-shift-tab) | apps/edge.talon
print message | key(p) | apps/gmail_edge.talon
refresh page | key(f5) | apps/edge.talon
refresh page | key(f5) | apps/gmail_edge.talon
remove formatting | key(ctrl-\) | apps/gmail_edge.talon
reply | key(r) | apps/gmail_edge.talon
reply all | key(a) | apps/gmail_edge.talon
save as draft | key(ctrl-s) | apps/gmail_edge.talon
select conversation | key(x) | apps/gmail_edge.talon
send message | key(ctrl-enter) | apps/gmail_edge.talon
set instructions | key(ctrl-shift-i) | apps/chat_gpt_shortcuts.talon
settings | key(f1) | development_tools.talon
settings() | # Stop continuous scroll/gaze scroll with a pop ⏎     user.mouse_enable_pop_stops_scroll = false ⏎     # Stop pop click with 'control mouse' mode ⏎     user.mouse_enable_pop_click = 0 ⏎     # Stop mouse scroll down using hiss noise ⏎     user.mouse_enable_hiss_scroll = false ⏎     # Stopped using this because it gets triggered all the time accidentally even when breathing for example | apps/edge.talon
skip ads | mouse_move(3546, 970) | apps/edge.talon
smoke blue | insert("!smokecolor blue") ⏎     sleep(100ms) ⏎     key(enter) | apps/edge.talon
smoke green | insert("!smokecolor green") ⏎     sleep(100ms) ⏎     key(enter) | apps/edge.talon
smoke on | insert("!smokeon") ⏎     sleep(100ms) ⏎     key(enter) | apps/edge.talon
smoke pink | insert("!smokecolor pink") ⏎     sleep(100ms) ⏎     key(enter) | apps/edge.talon
smoke red | insert("!smokecolor red") ⏎     sleep(100ms) ⏎     key(enter) | apps/edge.talon
smoke white | insert("!smokecolor white") ⏎     sleep(100ms) ⏎     key(enter) | apps/edge.talon
snippet run | key(ctrl-enter) | apps/edge.talon
sources tab | key(ctrl-shift-y) | development_tools.talon
start drone | insert("!drone") ⏎     key(enter) | apps/edge.talon
start realtime | speech.disable() ⏎     key(alt-m) | apps/edge.talon
step into | key(f11) | apps/edge.talon
step out | key(shift-f11) | apps/edge.talon
step over | key(f10) | apps/edge.talon
strike through | key(ctrl-shift-5) | apps/gmail_edge.talon
tab filter | key(ctrl-shift-a) | apps/edge.talon
tag() | browser | apps/edge.talon
tag() | user.tabs | apps/edge.talon
tag() | browser | apps/edge_testing.talon
tag() | user.tabs | apps/edge_testing.talon
test Blazor CRUD example | user.open_url("https://localhost:7026/") ⏎     sleep(400ms) ⏎     key(alt-t) ⏎     sleep(100ms) ⏎     insert("example") ⏎     sleep(200ms) ⏎     key(tab) ⏎     sleep(100ms) ⏎     key(down) ⏎     sleep(100ms) ⏎     key(tab) ⏎     key(enter) ⏎     sleep(100ms) ⏎     key(tab:15) ⏎     sleep(100ms) ⏎     key(space) ⏎     key(tab:9) ⏎     sleep(100ms) ⏎     key(space) ⏎     sleep(100ms) ⏎     key(alt-r) ⏎     sleep(100ms) ⏎     key(alt-g) | apps/edge.talon
test customer | key(alt-m) ⏎     sleep(100ms) ⏎     insert("Cu") ⏎     sleep(100ms) ⏎     insert("st") ⏎     sleep(500ms) ⏎     key(tab) ⏎     sleep(600ms) ⏎     key(enter) | apps/edge_testing.talon
theatre mode | key(alt-t) | apps/edge.talon
title | /chatgpt\|chat gpt/i | apps/chat_gpt_shortcuts.talon
title | FigJam | apps/fig_jam_page.talon
title | gmail | apps/gmail_edge.talon
title | Google Sheets | apps/google_sheets.talon
toggle breakpoint input window | key(ctrl-alt-b) | apps/edge.talon
toggle dock position | key(ctrl-shift-d) | development_tools.talon
toggle sidebar | key(ctrl-shift-s) | apps/chat_gpt_shortcuts.talon
toggle user interface | key(ctrl-\) | apps/fig_jam_page.talon
toggle voice | key(ctrl-shift-u) | apps/edge.talon
zoom in | key(ctrl-+) | apps/fig_jam_page.talon
zoom to one hundred | key(ctrl-0) | apps/fig_jam_page.talon
zoom to selection | key(shift-2) | apps/fig_jam_page.talon
zoom too fit | key(shift-1) | apps/fig_jam_page.talon
