# WhatsApp Desktop Keyboard Shortcuts
os: windows
and app.name: Application Frame Host
and title: /WhatsApp/
-
# General Shortcuts
new chat:        key(ctrl-n)
new group:       key(ctrl-shift-n)
next chat:       key(ctrl-shift-])
previous chat:   key(ctrl-shift-[)
search chats:    key(ctrl-e)
search messages: key(ctrl-f)
mute chat:       key(ctrl-shift-m)
open profile:    key(ctrl-p)
unread chat:     key(ctrl-shift-u)
open chat info:  key(ctrl-shift-i)
delete chat:     key(ctrl-backspace)
archive chat:    key(ctrl-shift-n)

# Message-Specific Shortcuts
delete message:  key(ctrl-shift-x)
reply message:   key(ctrl-shift-r)
forward message: key(ctrl-shift-f)
pin chat:        key(ctrl-shift-p)

# Navigation Shortcuts
close app:       key(alt-f4)
close search:    key(esc)
previous tab:    key(ctrl-shift-tab)
next tab:        key(ctrl-tab)

# Text Formatting
bold text:       
    insert("*") 
    key(left) 
    key(right)
italic text:     
    insert("_") 
    key(left) 
    key(right)
strike text:     
    insert("~") 
    key(left) 
    key(right)
monospace text:  
    insert("```") 
    key(left) 
    key(left) 
    key(left)
