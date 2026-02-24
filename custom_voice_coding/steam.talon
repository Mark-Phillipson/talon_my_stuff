# app.exe: "c:\program files (x86)\steam\bin\cef\cef.win64\steamwebhelper.exe"
# app.name: Steam Client WebHelper
#steam://open/library-
# None of these seemed to work  :(
# -----------------------------
# Direct Section Navigation (Reliable)
# -----------------------------

steam store:
    key(super-r)
    sleep(40ms)
    insert("steam://open/store")
    key(enter)

steam friends:
    key(super-r)
    sleep(40ms)ie
    insert("steam://open/friends")
    key(enter)

# -----------------------------
# Page Navigation
# -----------------------------

go back: key(alt-left)
go forward: key(alt-right)
page refresh: key(f5)
page find: key(ctrl-f)

# -----------------------------
# Tab Movement
# -----------------------------

next tab: key(ctrl-tab)
prior tab: key(ctrl-shift-tab)

# -----------------------------
# List Navigation
# -----------------------------

list up: key(up)
list down: key(down)
list open: key(enter)

# -----------------------------
# Overlay
# -----------------------------

steam overlay: key(shift-tab)
overlay close: key(escape)
