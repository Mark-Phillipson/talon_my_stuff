os: windows
-

#Foot Switch

# F13 - Left pedal: Left click
key(f13): mouse_click(0)

# F14 - Middle pedal: Toggle Speech on and Off
key(f14): speech.toggle()

#deck(pedal_middle): speech.toggle()
key(f15): mouse_click(1)

#Toggle Control Mouse (Physical Keyboard)
key(f8):
    user.tts("Toggle ing")
    tracking.control_toggle()
