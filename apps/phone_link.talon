# app.exe: c:\program files\windowsapps\microsoft.yourphone_1.26012.101.0_x64__8wekyb3d8bbwe\yourphoneappproxy.exe
app: yourphoneappproxy.exe
# app: Phone Link
# app: phone link
-

# Phone Link shortcuts (disabled: unreliable in connected mode)
#phone refresh: key(f5)

# Phone Link text insertion (Approach 1)
#phone type <user.text>:
#    clip.set_text(text)
#    key(ctrl-v)

#phone paste: key(ctrl-v)

#phone enter: key(enter)

#phone backspace: key(backspace)

#phone tab: key(tab)

#phone select all: key(ctrl-a)

#phone copy: key(ctrl-c)

#phone cut: key(ctrl-x)

# Phase 2 fallback helper actions (ADB path enabled)
# phone slow type <user.text>: user.phone_link_slow_type(text)

# phone type clipboard <user.text>: user.phone_link_type_via_clipboard(text)

# phone physical type <user.text>: user.phone_link_physical_type(text)

phone set device <user.text>: user.phone_link_set_adb_device(text)

phone get device: user.phone_link_get_adb_device()

#phone type <user.text>: user.phone_link_adb_type(text)
phone key <user.text>: user.phone_link_adb_keyevent(text)
#This once actually works
# please leave this for my own testing
phone type <user.text>: user.phone_link_terminal_comment(text)
phone fake email: user.phone_link_terminal_comment("mzomcpedcw@gmail.com")
