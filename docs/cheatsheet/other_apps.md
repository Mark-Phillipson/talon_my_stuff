# Talon Cheatsheet — Other Apps (<=20 commands)

Command | Action | Source
--- | --- | ---
[Access] [toggle] breakpoint | key(f9) | apps/access.talon
[Access] app.exe | msaccess.exe | apps/access.talon
[Access] clear all breakpoints | key(ctrl-shift-f9) | apps/access.talon
[Access] compile | key(alt-d) ⏎     sleep(100ms) ⏎     key(c) | apps/access.talon
[Access] datasheet view | key(alt-h) ⏎     sleep(100ms) ⏎     key(w) ⏎     sleep(100ms) ⏎     key(h) | apps/access.talon
[Access] design view | key(alt-h) ⏎     sleep(100ms) ⏎     key(w) ⏎     sleep(100ms) ⏎     key(d) | apps/access.talon
[Access] immediate window | key(ctrl-g) | apps/access.talon
[Access] reset | key(ctrl-break) | apps/access.talon
[Access] reset code | key(alt-d) ⏎     sleep(100ms) ⏎     key(right) ⏎     sleep(100ms) ⏎     key(r) | apps/access.talon
[Access] run to cursor | key(ctrl-f8) | apps/access.talon
[Access] step into | key(f8) | apps/access.talon
[Access] step out | key(ctrl-shift-f8) | apps/access.talon
[Access] step over | key(shift-f8) | apps/access.talon
[Access] toggle breakpoint | key(f9) | apps/access.talon
[Azure Data Studio] app | azure_data_studio | apps/azure_data_studio.talon
[Azure Data Studio] app | Azure Data Studio | apps/azure_data_studio.talon
[Azure Data Studio] close tab | key(ctrl-w) | apps/azure_data_studio.talon
[Azure Data Studio] execute query | key(f5) | apps/azure_data_studio.talon
[Azure Data Studio] expand selection | key(shift-alt-right) | apps/azure_data_studio.talon
[Azure Data Studio] find following <user.text> | key(ctrl-f) ⏎     sleep(100ms) ⏎     insert(text) ⏎     key(enter) ⏎     key(escape) | apps/azure_data_studio.talon
[Azure Data Studio] focus server | user.vscode("dataExplorer.servers.focus") | apps/azure_data_studio.talon
[Azure Data Studio] go to definition | key(f12) | apps/azure_data_studio.talon
[Azure Data Studio] go to line | key(ctrl-g) | apps/azure_data_studio.talon
[Azure Data Studio] new connection | user.vscode("registeredServers.addConnection") | apps/azure_data_studio.talon
[Azure Data Studio] open connections | user.vscode("registeredServers.addConnection") | apps/azure_data_studio.talon
[Azure Data Studio] os | windows | apps/azure_data_studio.talon
[Azure Data Studio] toggle results | key(ctrl-shift-r) ⏎     sleep(100ms) ⏎     key(ctrl-shift-r) | apps/azure_data_studio.talon
[Azure Data Studio] toggle sidebar | key(ctrl-b) | apps/azure_data_studio.talon
[Chrome] app | chrome.exe | apps/playwright.talon
[Chrome] resume | key(f8) | apps/playwright.talon
[Chrome] step over | key(f10) | apps/playwright.talon
[Custom Message] hide my message | user.hud_publish_content("", "my_message", "") | apps/custom_message.talon
[Custom Message] show my message | user.hud_publish_content("\n Mixed <*Mode/> Is: <+Great/>", "my_message", "Talon Voice Modes") | apps/custom_message.talon
[Custom Rango] and not tag | user.rango_disabled | apps/custom_rango.talon
[Custom Rango] rango (toggle | user.rango_toggle_hints() | apps/custom_rango.talon
[Custom Rango] switch) | user.rango_toggle_hints() | apps/custom_rango.talon
[Custom Rango] tag | browser | apps/custom_rango.talon
[Custom Rango] tag() | user.rango_direct_clicking | apps/custom_rango.talon
[Dictationboxmsp] app | DictationBoxMSP | apps/default_box.talon
[Dictationboxmsp] clear | key(alt-c) | apps/default_box.talon
[Dictationboxmsp] copy only | key(alt-y) | apps/default_box.talon
[Dictationboxmsp] find text | key(alt-f) | apps/default_box.talon
[Dictationboxmsp] front size | key(alt-o) | apps/default_box.talon
[Dictationboxmsp] replace text | key(alt-r) | apps/default_box.talon
[Dictationboxmsp] search | key(alt-s) | apps/default_box.talon
[Dictationboxmsp] window | key(alt-w) | apps/default_box.talon
[Heartbound Demo] accept | key(z) | games/heartbound.talon
[Heartbound Demo] app | heartbound_demo.exe | games/heartbound.talon
[Heartbound Demo] go down | key(down) | games/heartbound.talon
[Heartbound Demo] go left | key(left) | games/heartbound.talon
[Heartbound Demo] go right | key(right) | games/heartbound.talon
[Heartbound Demo] go up | key(up) | games/heartbound.talon
[Heartbound Demo] pause | key(esc) | games/heartbound.talon
[Heartbound Demo] settings() | key_hold = 50 | games/heartbound.talon
[Heartbound Demo] skip | key(x) | games/heartbound.talon
[Javaw] app | javaw.exe | apps/hide_mode_indicator.talon
[Javaw] app | civilizationvi.exe | apps/hide_mode_indicator.talon
[Javaw] app | suddenstrike4.exe | apps/hide_mode_indicator.talon
[Javaw] settings() | user.mode_indicator_show = 0 | apps/hide_mode_indicator.talon
[Microsoft Excel] and app.exe | excel.exe | apps/microsoft_excel.talon
[Microsoft Excel] and app.name | Microsoft Excel | apps/microsoft_excel.talon
[Microsoft Excel] go to | key(ctrl-g) | apps/microsoft_excel.talon
[Microsoft Excel] navigate <user.letter> <number_small> | key(ctrl-g) ⏎     insert("{letter}{number_small}") | apps/microsoft_excel.talon
[Microsoft Excel] os | windows | apps/microsoft_excel.talon
[Microsoft Excel] os | windows | apps/microsoft_excel.talon
[Microsoft Teams] app | msteams.exe #Personal Version | microsoft_teams.talon
[Microsoft Teams] app | ms-teams.exe #Organization Version (This will also stop speech recognition when toggling the microphone!) | microsoft_teams.talon
[Microsoft Teams] leave meeting confirm | key(ctrl-shift-h) | microsoft_teams.talon
[Microsoft Teams] microphone) | key(ctrl-shift-m) | microsoft_teams.talon
[Microsoft Teams] share screen | key(ctrl-shift-e) | microsoft_teams.talon
[Microsoft Teams] toggle (mute | key(ctrl-shift-m) | microsoft_teams.talon
[Mstsc] app | mstsc.exe | apps/remote_desktop.talon
[Mstsc] connect | key(alt-n) | apps/remote_desktop.talon
[Mstsc] connection bar | key(ctrl-alt-home) | apps/remote_desktop.talon
[Mstsc] current directory | insert("cd ") | apps/remote_desktop.talon
[Mstsc] disconnect | key(ctrl-alt-home) ⏎     key(tab) ⏎     repeat(3) | apps/remote_desktop.talon
[Mstsc] list directory | insert("dir") ⏎     sleep(100ms) ⏎     key(enter) | apps/remote_desktop.talon
[Mstsc] minimize remote window | key(ctrl-alt-home) ⏎     key(tab) ⏎     repeat(1) | apps/remote_desktop.talon
[Mstsc] previous directory | insert("cd ..") ⏎     sleep(100ms) ⏎     key(enter) | apps/remote_desktop.talon
[Mstsc] pull changes | key(ctrl-k) ⏎     sleep(200ms) ⏎     key(ctrl-g) | apps/remote_desktop.talon
[Mstsc] system menu | key(ctrl-alt-home) | apps/remote_desktop.talon
[Mstsc] task manager | key(ctrl-alt-end) | apps/remote_desktop.talon
[Mstsc] window mode | key(ctrl-alt-home) ⏎     key(tab) ⏎     repeat(2) | apps/remote_desktop.talon
[Notepad] app | notepad | apps/notepad.talon
[Notepad] chuck line | key(home) ⏎     sleep(30ms) ⏎     key(shift-end) ⏎     sleep(30ms) ⏎     key(delete) | apps/notepad.talon
[Notepad] pilot rewrite | key(ctrl-d) | apps/notepad.talon
[Notepad] pilot summarize | key(ctrl-m) | apps/notepad.talon
[Notepad] tag() | user.tabs | apps/notepad.talon
[Notepad] tag() | user.find_and_replace | apps/notepad.talon
[Notepad] take [all] | key(ctrl-a) | apps/notepad.talon
[Nvda] screen reader elements list | key(capslock:down) ⏎     sleep(50ms) ⏎     key(f7) ⏎     sleep(50ms) ⏎     key(capslock:up) | apps/NVDA.talon
[Nvda] screen reader form field | key(f) | apps/NVDA.talon
[Nvda] screen reader heading | key(h) | apps/NVDA.talon
[Nvda] screen reader heading 1 | key(1) | apps/NVDA.talon
[Nvda] screen reader heading 2 | key(2) | apps/NVDA.talon
[Nvda] screen reader heading 3 | key(3) | apps/NVDA.talon
[Nvda] screen reader landmark | key(d) | apps/NVDA.talon
[Nvda] screen reader link | key(k) | apps/NVDA.talon
[Nvda] screen reader list | key(l) | apps/NVDA.talon
[Nvda] screen reader menu | #NVDA ⏎     key(capslock:down) ⏎     sleep(50ms) ⏎     key(n) ⏎     sleep(50ms) ⏎     key(capslock:up) | apps/NVDA.talon
[Nvda] screen reader mode | key(capslock:down) ⏎     sleep(50ms) ⏎     key(s) ⏎     sleep(50ms) ⏎     key(capslock:up) | apps/NVDA.talon
[Nvda] screen reader read all | key(capslock:down) ⏎     sleep(50ms) ⏎     key(down) ⏎     sleep(50ms) ⏎     key(capslock:up) | apps/NVDA.talon
[Nvda] screen reader read line | key(capslock:down) ⏎     sleep(50ms) ⏎     key(up) ⏎     sleep(50ms) ⏎     key(capslock:up) | apps/NVDA.talon
[Nvda] screen reader report focus | key(capslock:down) ⏎     sleep(50ms) ⏎     key(t) ⏎     sleep(50ms) ⏎     key(capslock:up) | apps/NVDA.talon
[Nvda] screen reader report link | key(capslock:down) ⏎     sleep(50ms) ⏎     key(k) ⏎     sleep(50ms) ⏎     key(capslock:up) | apps/NVDA.talon
[Nvda] screen reader sleep | key(capslock:down) ⏎     sleep(50ms) ⏎     key(shift-s) ⏎     sleep(50ms) ⏎     key(capslock:up) | apps/NVDA.talon
[Nvda] screen reader start | key(ctrl-alt-n) | apps/NVDA.talon
[Nvda] screen reader stop | key(capslock:down) ⏎     sleep(50ms) ⏎     key(q) ⏎     sleep(50ms) ⏎     key(capslock:up) ⏎     sleep(50ms) ⏎     key(enter) | apps/NVDA.talon
[Nvda] screen reader table | key(t) | apps/NVDA.talon
[Phoneexperiencehost] app | phoneexperiencehost.exe | apps/phone_link.talon
[Phoneexperiencehost] phone refresh | key(f5) | apps/phone_link.talon
[Snagit] app | Snagit | games/snagit.talon
[Snagit] copy all | key(ctrl-shift-c) | games/snagit.talon
[Snagit] save as | key(ctrl-shift-s) | games/snagit.talon
[Snippingtool] app | SnippingTool.exe | apps/snipping_tool.talon
[Snippingtool] menu | key(alt) | apps/snipping_tool.talon
[Snippingtool] mouse testing | position_x = user.query_mouse_position_x() ⏎     position_y = user.query_mouse_position_y() ⏎     user.mouse_testing(position_x, position_y) | apps/snipping_tool.talon
[Snippingtool] settings() | user.mode_indicator_show = 0 ⏎     # Choose how pop click should work in 'control mouse' mode ⏎     # 0 = off ⏎     # 1 = on with eyetracker but not zoom mouse mode ⏎     # 2 = on but not with zoom mouse mode ⏎     user.mouse_enable_pop_click = 0 ⏎     key_hold = 50 ⏎     # I think this is something AI might have made up user.mouse_delay = 0.5 | apps/snipping_tool.talon
[Starcraft Ii] [select] army | key(f2) | games/starcraft_II.talon
[Starcraft Ii] [select] box | position_x = user.query_mouse_position_x() ⏎     position_y = user.query_mouse_position_y() ⏎     user.mouse_drag(0) ⏎     sleep(100ms) ⏎     mouse_move(position_x + 500, position_y + 500) ⏎     sleep(500ms) ⏎     mouse_click(0) | games/starcraft_II.talon
[Starcraft Ii] [select] idle [worker] | key(f1) | games/starcraft_II.talon
[Starcraft Ii] [select] visible | key(ctrl:down) ⏎     mouse_click(0) | games/starcraft_II.talon
[Starcraft Ii] all idle [workers] | key(ctrl-f1) | games/starcraft_II.talon
[Starcraft Ii] app | StarCraft II | games/starcraft_II.talon
[Starcraft Ii] attack [move] | key(a) ⏎     mouse_click(0) | games/starcraft_II.talon
[Starcraft Ii] build | key(b) | games/starcraft_II.talon
[Starcraft Ii] fly <user.arrow_key> | key(arrow_key) ⏎     repeat(20) ⏎     sleep(50ms) ⏎     key(arrow_key) ⏎     repeat(20) ⏎     sleep(50ms) | games/starcraft_II.talon
[Starcraft Ii] game <user.arrow_key> | key(arrow_key) ⏎     key(arrow_key) ⏎     key(arrow_key) ⏎     key(arrow_key) ⏎     key(arrow_key) ⏎     key(arrow_key) ⏎     key(arrow_key) | games/starcraft_II.talon
[Starcraft Ii] menu | key(f10) | games/starcraft_II.talon
[Starcraft Ii] move | mouse_click(1) | games/starcraft_II.talon
[Starcraft Ii] take [all] | mouse_move(110, 10) ⏎     sleep(100ms) ⏎     user.mouse_drag(0) ⏎     sleep(100ms) ⏎     mouse_move(1650, 250) ⏎     sleep(100ms) ⏎     mouse_move(1650, 979) ⏎     sleep(100ms) ⏎     mouse_click(0) | games/starcraft_II.talon
[Starcraft Ii] train SCV | key(s) | games/starcraft_II.talon
[Whats App] close chat | key(ctrl-w) | apps/whats_app.talon
[Whats App] edit last message | key(ctrl-up) | apps/whats_app.talon
[Whats App] emoji panel | key(ctrl-shift-e) | apps/whats_app.talon
[Whats App] gif panel | key(ctrl-shift-g) | apps/whats_app.talon
[Whats App] mute chat | key(ctrl-shift-m) | apps/whats_app.talon
[Whats App] new chat | key(ctrl-n) | apps/whats_app.talon
[Whats App] next chat | key(ctrl-shift-]) | apps/whats_app.talon
[Whats App] open chat <user.number> | key(ctrl:down) ⏎     input(number) ⏎     key(ctrl:up) | apps/whats_app.talon
[Whats App] previous chat | key(ctrl-shift-[) | apps/whats_app.talon
[Whats App] profile | key(ctrl-p) | apps/whats_app.talon
[Whats App] search | key(ctrl-f) | apps/whats_app.talon
[Whats App] search in chat | key(ctrl-shift-f) | apps/whats_app.talon
[Whats App] sticker panel | key(ctrl-shift-s) | apps/whats_app.talon
[Whats App] title | WhatsApp | apps/whats_app.talon
[Whats App] toggle read | key(ctrl-shift-u) | apps/whats_app.talon
[Whats App] zoom in | key(ctrl-+) | apps/whats_app.talon
[Whats App] zoom out | key(ctrl--) | apps/whats_app.talon
[Zoom Mute] and mode | sleep | apps/zoom_mute.talon
[Zoom Mute] mute zoom | key(alt + a) ⏎     speech.enable() | apps/zoom_mute.talon
[Zoom Mute] tag | zoom | apps/zoom_mute.talon
[Zoom] tag | zoom | apps/zoom.talon
[Zoom] unmute | key(alt-a) ⏎     speech.disable() | apps/zoom.talon
