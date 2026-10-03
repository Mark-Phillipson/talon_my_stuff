os: windows
-

#Foot Switch

# F13 - Left pedal: Left click
key(f13): mouse_click(0)

# Middle pedal: Push to Talk Does Not Work
#key(f14:down): speech.enable()
#key(f14:up): speech.disable()

# F14 - Middle pedal: Toggle Speech on and Off
key(f14): speech.toggle()

#deck(pedal_middle): speech.toggle()
key(f15): mouse_click(1)
