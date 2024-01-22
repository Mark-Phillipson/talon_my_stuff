app: microsoft_edge
-
tag(): browser
tag(): user.tabs

(closed tab) | (close tab) : key(ctrl-w)
theatre mode: key(alt-t)
previous tab: key(ctrl-shift-tab)
next tab: key(ctrl-tab)
skip ads:
    mouse_move(3546, 970)
destroy drone: 
    insert("!drone -1")
    key(enter)
start drone:
    insert("!drone")
    key(enter)    
drone diagonal:
    insert("!D56")
    sleep(100ms)
    key(enter)  
    sleep(1000ms)
    insert("!R55")
    sleep(100ms)
    key(enter)  
drone left:
    insert("!L55")
    sleep(100ms)
    key(enter)
drone right:
    insert("!R55")
    sleep(100ms)
    key(enter)
drone up:
    insert("!U55")
    sleep(100ms)
    key(enter)
drone down:
    insert("!D55")
    sleep(100ms)
    key(enter)            
smoke on:
    insert("!smokeon")
    sleep(100ms)
    key(enter)  
smoke white:
    insert("!smokecolor white")
    sleep(100ms)
    key(enter)
smoke red:  
    insert("!smokecolor red")
    sleep(100ms)
    key(enter)
smoke green:
    insert("!smokecolor green")
    sleep(100ms)
    key(enter)
smoke blue:
    insert("!smokecolor blue")
    sleep(100ms)
    key(enter)    
smoke pink:
    insert("!smokecolor pink")
    sleep(100ms)
    key(enter)
local host chan of custody:
    user.open_url("https://localhost:44343/")