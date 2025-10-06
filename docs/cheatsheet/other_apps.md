# Talon Cheatsheet — Other Apps (<=20 commands)

| Spoken Command | Description | Source |
|----------------|-------------|--------|
| [Access] [toggle] breakpoint | key(f9) | access |
| [Access] app.exe | msaccess.exe | access |
| [Access] clear all breakpoints | key(ctrl-shift-f9) | access |
| [Access] compile | key(alt-d) ⏎     sleep(100ms) ⏎     key(c) | access |
| [Access] datasheet view | key(alt-h) ⏎     sleep(100ms) ⏎     key(w) ⏎     sleep(100ms) ⏎     key(h) | access |
| [Access] design view | key(alt-h) ⏎     sleep(100ms) ⏎     key(w) ⏎     sleep(100ms) ⏎     key(d) | access |
| [Access] immediate window | key(ctrl-g) | access |
| [Access] reset | key(ctrl-break) | access |
| [Access] reset code | key(alt-d) ⏎     sleep(100ms) ⏎     key(right) ⏎     sleep(100ms) ⏎     key(r) | access |
| [Access] run to cursor | key(ctrl-f8) | access |
| [Access] step into | key(f8) | access |
| [Access] step out | key(ctrl-shift-f8) | access |
| [Access] step over | key(shift-f8) | access |
| [Access] toggle breakpoint | key(f9) | access |
| [Azure Data Studio] app | azure_data_studio | azure_data_studio |
| [Azure Data Studio] app | Azure Data Studio | azure_data_studio |
| [Azure Data Studio] close tab | key(ctrl-w) | azure_data_studio |
| [Azure Data Studio] execute query | key(f5) | azure_data_studio |
| [Azure Data Studio] expand selection | key(shift-alt-right) | azure_data_studio |
| [Azure Data Studio] find following <user.text> | key(ctrl-f) ⏎     sleep(100ms) ⏎     insert(text) ⏎     key(enter) ⏎     key(escape) | azure_data_studio |
| [Azure Data Studio] focus server | user.vscode("dataExplorer.servers.focus") | azure_data_studio |
| [Azure Data Studio] go to definition | key(f12) | azure_data_studio |
| [Azure Data Studio] go to line | key(ctrl-g) | azure_data_studio |
| [Azure Data Studio] new connection | user.vscode("registeredServers.addConnection") | azure_data_studio |
| [Azure Data Studio] open connections | user.vscode("registeredServers.addConnection") | azure_data_studio |
| [Azure Data Studio] os | windows | azure_data_studio |
| [Azure Data Studio] toggle results | key(ctrl-shift-r) ⏎     sleep(100ms) ⏎     key(ctrl-shift-r) | azure_data_studio |
| [Azure Data Studio] toggle sidebar | key(ctrl-b) | azure_data_studio |
| [Chrome] app | chrome.exe | playwright |
| [Chrome] resume | key(f8) | playwright |
| [Chrome] step over | key(f10) | playwright |
| [Custom Message] hide my message | user.hud_publish_content("", "my_message", "") | custom_message |
| [Custom Message] show my message | user.hud_publish_content("\n Mixed <*Mode/> Is: <+Great/>", "my_message", "Talon Voice Modes") | custom_message |
| [Custom Rango] and not tag | user.rango_disabled | custom_rango |
| [Custom Rango] rango (toggle | user.rango_toggle_hints() | custom_rango |
| [Custom Rango] switch) | user.rango_toggle_hints() | custom_rango |
| [Custom Rango] tag | browser | custom_rango |
| [Custom Rango] tag() | user.rango_direct_clicking | custom_rango |
| [Dictationboxmsp] app | DictationBoxMSP | default_box |
| [Dictationboxmsp] clear | key(alt-c) | default_box |
| [Dictationboxmsp] copy only | key(alt-y) | default_box |
| [Dictationboxmsp] find text | key(alt-f) | default_box |
| [Dictationboxmsp] front size | key(alt-o) | default_box |
| [Dictationboxmsp] replace text | key(alt-r) | default_box |
| [Dictationboxmsp] search | key(alt-s) | default_box |
| [Dictationboxmsp] window | key(alt-w) | default_box |
| [Heartbound Demo] accept | key(z) | heartbound |
| [Heartbound Demo] app | heartbound_demo.exe | heartbound |
| [Heartbound Demo] go down | key(down) | heartbound |
| [Heartbound Demo] go left | key(left) | heartbound |
| [Heartbound Demo] go right | key(right) | heartbound |
| [Heartbound Demo] go up | key(up) | heartbound |
| [Heartbound Demo] pause | key(esc) | heartbound |
| [Heartbound Demo] settings() | key_hold = 50 | heartbound |
| [Heartbound Demo] skip | key(x) | heartbound |
| [Javaw] app | javaw.exe | hide_mode_indicator |
| [Javaw] app | civilizationvi.exe | hide_mode_indicator |
| [Javaw] app | suddenstrike4.exe | hide_mode_indicator |
| [Javaw] settings() | user.mode_indicator_show = 0 | hide_mode_indicator |
| [Microsoft Excel] and app.exe | excel.exe | microsoft_excel |
| [Microsoft Excel] and app.name | Microsoft Excel | microsoft_excel |
| [Microsoft Excel] go to | key(ctrl-g) | microsoft_excel |
| [Microsoft Excel] navigate <user.letter> <number_small> | key(ctrl-g) ⏎     insert("{letter}{number_small}") | microsoft_excel |
| [Microsoft Excel] os | windows | microsoft_excel |
| [Microsoft Excel] os | windows | microsoft_excel |
| [Microsoft Teams] app | msteams.exe #Personal Version | microsoft_teams |
| [Microsoft Teams] app | ms-teams.exe #Organization Version (This will also stop speech recognition when toggling the micr... | microsoft_teams |
| [Microsoft Teams] leave meeting confirm | key(ctrl-shift-h) | microsoft_teams |
| [Microsoft Teams] microphone) | key(ctrl-shift-m) | microsoft_teams |
| [Microsoft Teams] share screen | key(ctrl-shift-e) | microsoft_teams |
| [Microsoft Teams] toggle (mute | key(ctrl-shift-m) | microsoft_teams |
| [Mstsc] app | mstsc.exe | remote_desktop |
| [Mstsc] connect | key(alt-n) | remote_desktop |
| [Mstsc] connection bar | key(ctrl-alt-home) | remote_desktop |
| [Mstsc] current directory | insert("cd ") | remote_desktop |
| [Mstsc] disconnect | key(ctrl-alt-home) ⏎     key(tab) ⏎     repeat(3) | remote_desktop |
| [Mstsc] list directory | insert("dir") ⏎     sleep(100ms) ⏎     key(enter) | remote_desktop |
| [Mstsc] minimize remote window | key(ctrl-alt-home) ⏎     key(tab) ⏎     repeat(1) | remote_desktop |
| [Mstsc] previous directory | insert("cd ..") ⏎     sleep(100ms) ⏎     key(enter) | remote_desktop |
| [Mstsc] pull changes | key(ctrl-k) ⏎     sleep(200ms) ⏎     key(ctrl-g) | remote_desktop |
| [Mstsc] system menu | key(ctrl-alt-home) | remote_desktop |
| [Mstsc] task manager | key(ctrl-alt-end) | remote_desktop |
| [Mstsc] window mode | key(ctrl-alt-home) ⏎     key(tab) ⏎     repeat(2) | remote_desktop |
| [Notepad] app | notepad | notepad |
| [Notepad] chuck line | key(home) ⏎     sleep(30ms) ⏎     key(shift-end) ⏎     sleep(30ms) ⏎     key(delete) | notepad |
| [Notepad] pilot rewrite | key(ctrl-d) | notepad |
| [Notepad] pilot summarize | key(ctrl-m) | notepad |
| [Notepad] tag() | user.tabs | notepad |
| [Notepad] tag() | user.find_and_replace | notepad |
| [Notepad] take [all] | key(ctrl-a) | notepad |
| [Nvda] screen reader elements list | key(capslock:down) ⏎     sleep(50ms) ⏎     key(f7) ⏎     sleep(50ms) ⏎     key(capslock:up) | NVDA |
| [Nvda] screen reader form field | key(f) | NVDA |
| [Nvda] screen reader heading | key(h) | NVDA |
| [Nvda] screen reader heading 1 | key(1) | NVDA |
| [Nvda] screen reader heading 2 | key(2) | NVDA |
| [Nvda] screen reader heading 3 | key(3) | NVDA |
| [Nvda] screen reader landmark | key(d) | NVDA |
| [Nvda] screen reader link | key(k) | NVDA |
| [Nvda] screen reader list | key(l) | NVDA |
| [Nvda] screen reader menu | #NVDA ⏎     key(capslock:down) ⏎     sleep(50ms) ⏎     key(n) ⏎     sleep(50ms) ⏎     key(capsloc... | NVDA |
| [Nvda] screen reader mode | key(capslock:down) ⏎     sleep(50ms) ⏎     key(s) ⏎     sleep(50ms) ⏎     key(capslock:up) | NVDA |
| [Nvda] screen reader read all | key(capslock:down) ⏎     sleep(50ms) ⏎     key(down) ⏎     sleep(50ms) ⏎     key(capslock:up) | NVDA |
| [Nvda] screen reader read line | key(capslock:down) ⏎     sleep(50ms) ⏎     key(up) ⏎     sleep(50ms) ⏎     key(capslock:up) | NVDA |
| [Nvda] screen reader report focus | key(capslock:down) ⏎     sleep(50ms) ⏎     key(t) ⏎     sleep(50ms) ⏎     key(capslock:up) | NVDA |
| [Nvda] screen reader report link | key(capslock:down) ⏎     sleep(50ms) ⏎     key(k) ⏎     sleep(50ms) ⏎     key(capslock:up) | NVDA |
| [Nvda] screen reader sleep | key(capslock:down) ⏎     sleep(50ms) ⏎     key(shift-s) ⏎     sleep(50ms) ⏎     key(capslock:up) | NVDA |
| [Nvda] screen reader start | key(ctrl-alt-n) | NVDA |
| [Nvda] screen reader stop | key(capslock:down) ⏎     sleep(50ms) ⏎     key(q) ⏎     sleep(50ms) ⏎     key(capslock:up) ⏎     ... | NVDA |
| [Nvda] screen reader table | key(t) | NVDA |
| [Phoneexperiencehost] app | phoneexperiencehost.exe | phone_link |
| [Phoneexperiencehost] phone refresh | key(f5) | phone_link |
| [Snagit] app | Snagit | snagit |
| [Snagit] copy all | key(ctrl-shift-c) | snagit |
| [Snagit] save as | key(ctrl-shift-s) | snagit |
| [Snippingtool] app | SnippingTool.exe | snipping_tool |
| [Snippingtool] menu | key(alt) | snipping_tool |
| [Snippingtool] mouse testing | position_x = user.query_mouse_position_x() ⏎     position_y = user.query_mouse_position_y() ⏎    ... | snipping_tool |
| [Snippingtool] settings() | user.mode_indicator_show = 0 ⏎     # Choose how pop click should work in 'control mouse' mode ⏎  ... | snipping_tool |
| [Starcraft Ii] [select] army | key(f2) | starcraft_II |
| [Starcraft Ii] [select] box | position_x = user.query_mouse_position_x() ⏎     position_y = user.query_mouse_position_y() ⏎    ... | starcraft_II |
| [Starcraft Ii] [select] idle [worker] | key(f1) | starcraft_II |
| [Starcraft Ii] [select] visible | key(ctrl:down) ⏎     mouse_click(0) | starcraft_II |
| [Starcraft Ii] all idle [workers] | key(ctrl-f1) | starcraft_II |
| [Starcraft Ii] app | StarCraft II | starcraft_II |
| [Starcraft Ii] attack [move] | key(a) ⏎     mouse_click(0) | starcraft_II |
| [Starcraft Ii] build | key(b) | starcraft_II |
| [Starcraft Ii] fly <user.arrow_key> | key(arrow_key) ⏎     repeat(20) ⏎     sleep(50ms) ⏎     key(arrow_key) ⏎     repeat(20) ⏎     sle... | starcraft_II |
| [Starcraft Ii] game <user.arrow_key> | key(arrow_key) ⏎     key(arrow_key) ⏎     key(arrow_key) ⏎     key(arrow_key) ⏎     key(arrow_key... | starcraft_II |
| [Starcraft Ii] menu | key(f10) | starcraft_II |
| [Starcraft Ii] move | mouse_click(1) | starcraft_II |
| [Starcraft Ii] take [all] | mouse_move(110, 10) ⏎     sleep(100ms) ⏎     user.mouse_drag(0) ⏎     sleep(100ms) ⏎     mouse_mo... | starcraft_II |
| [Starcraft Ii] train SCV | key(s) | starcraft_II |
| [Whats App] close chat | key(ctrl-w) | whats_app |
| [Whats App] edit last message | key(ctrl-up) | whats_app |
| [Whats App] emoji panel | key(ctrl-shift-e) | whats_app |
| [Whats App] gif panel | key(ctrl-shift-g) | whats_app |
| [Whats App] mute chat | key(ctrl-shift-m) | whats_app |
| [Whats App] new chat | key(ctrl-n) | whats_app |
| [Whats App] next chat | key(ctrl-shift-]) | whats_app |
| [Whats App] open chat <user.number> | key(ctrl:down) ⏎     input(number) ⏎     key(ctrl:up) | whats_app |
| [Whats App] previous chat | key(ctrl-shift-[) | whats_app |
| [Whats App] profile | key(ctrl-p) | whats_app |
| [Whats App] search | key(ctrl-f) | whats_app |
| [Whats App] search in chat | key(ctrl-shift-f) | whats_app |
| [Whats App] sticker panel | key(ctrl-shift-s) | whats_app |
| [Whats App] title | WhatsApp | whats_app |
| [Whats App] toggle read | key(ctrl-shift-u) | whats_app |
| [Whats App] zoom in | key(ctrl-+) | whats_app |
| [Whats App] zoom out | key(ctrl--) | whats_app |
| [Zoom Mute] and mode | sleep | zoom_mute |
| [Zoom Mute] mute zoom | key(alt + a) ⏎     speech.enable() | zoom_mute |
| [Zoom Mute] tag | zoom | zoom_mute |
| [Zoom] tag | zoom | zoom |
| [Zoom] unmute | key(alt-a) ⏎     speech.disable() | zoom |
