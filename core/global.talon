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
deck(pedal_middle): 
    speech.toggle()
    # user.microphone_toggle()
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
