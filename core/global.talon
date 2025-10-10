
emoji {user.emoji}: user.paste(emoji)

^game mode$:
    mode.enable("game")    
    mode.enable("command")
    mode.disable("dictation")
    mode.disable("sleep")
^game mode off$:
    mode.disable("game")
pick <number_small>: user.pick_item(number_small)
pick to: user.pick_item(2)
pick <user.word>:
    "{word}"
    key(enter)
pick <user.letters>:
    "{letters}"
    key(enter)
[save to] disk: key(ctrl-s)
context menu: key(menu)
help search selection:    
    key(ctrl-c)
    sleep(500ms)
    text = clip.text()
    user.help_search(text)
taskbar toggle:
    user.toggle_taskbar()
snipping tool: key(super-shift-s)
[touch] screen one: 
    mouse_move(-680, 480)    
    mouse_click(0)
[touch] screen two:
    mouse_move(986, 470)    
    mouse_click(0)
mouse last position:
    mouse_coordinates = clip.text()
    user.move_mouse_from_string(mouse_coordinates)
command palette: key(super-alt-space)
talon lists show [<user.text>]: user.show_talon_lists(user.text or "")
snip folder local documents: insert("C:\\Users\\MPhil\\Documents")
snip folder downloads: insert("C:\\Users\\MPhil\\Downloads")
snip folder pictures: insert("C:\\Users\\MPhil\\OneDrive\\Pictures")
snip folder one drive documents: insert("C:\\Users\\MPhil\\OneDrive\\Documents")
snip folder desktop: insert("C:\\Users\\MPhil\\Desktop")
snip folder desktop pictures: insert("C:\\DesktopPictures")
snip folder repose: insert("C:\\Users\\MPhil\\source\\repos")
start twitch bot:  user.system_command("c:/Users/MPhil/source/repos/TwitchBot01/launch-bot.bat")
hover: user.move_cursor_to_gaze_point()
tab clothes: user.tab_close_wrapper()
(ask it) | (basket): 
    insert("?")
    sleep(200ms)
    key(enter)
total <user.prose>$: user.insert_formatted(prose, "CAPITALIZE_ALL_WORDS")
glide [cursor]: key(super-alt-.)
zoom it: key(super-ctrl-f8)
carriage [return]: key(enter)
#Currently Not Working?
switch pedals: key(ctrl-alt-f9)
mouse wheels: key(ctrl-alt-f10)
test clippy: user.imgui_test_toggle()