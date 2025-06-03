#then:                       skip()
#stop:                       user.stop_app()

pick <number_small>: user.pick_item(number_small)
pick to: user.pick_item(2)
#control mouse: tracking.control_toggle()
pick <user.word>:
    "{word}"
    key(enter)
pick <user.letters>:
    "{letters}"
    key(enter)
# deck(pedal_middle): 
#     speech.toggle()
[save to] disk: key(ctrl-s)
context menu: key(menu)
help search clipboard:
    text = clip.text()
    user.help_search(text)
help search selection:    
    key(ctrl-c)
    sleep(500ms)
    text = clip.text()
    user.help_search(text)
new paragraph: key(enter)
new line: key(enter)
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
launch bot:    user.system_command("c:/Users/MPhil/source/repos/TwitchBot01/launch-bot.bat")