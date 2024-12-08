#then:                       skip()
#stop:                       user.stop_app()

pick <number_small>: user.pick_item(number_small)
pick to: user.pick_item(2)
control mouse: tracking.control_toggle()
pick <user.word>:
    "{word}"
    key(enter)
pick <user.letters>:
    "{letters}"
    key(enter)
deck(pedal_left): mouse_click(0)
deck(pedal_middle): speech.toggle()
deck(pedal_right): mouse_click(1)

[save to] disk: key(ctrl-s)
context menu: key(menu)
help search clipboard:
    text = clip.text()
    user.help_search(text)
new paragraph: key(enter)
new line: key(enter)
<number> <user.text>: key(ctrl)
taskbar toggle:
    user.toggle_taskbar()