test ("new chat"):
    key(ctrl-n)

test ("close chat"):
    key(ctrl-w)

test ("search"):
    key(ctrl-f)

test ("search in chat"):
    key(ctrl-shift-f)

test ("profile"):
    key(ctrl-p)

test ("mute chat"):
    key(ctrl-shift-m)

test ("toggle read"):
    key(ctrl-shift-u)

test ("emoji panel"):
    key(ctrl-shift-e)

test ("gif panel"):
    key(ctrl-shift-g)

test ("sticker panel"):
    key(ctrl-shift-s)

test ("previous chat"):
    key(ctrl-shift-[)

test ("next chat"):
    key(ctrl-shift-])

test ("open chat 500"):
    key(ctrl:down)
    insert("500")
    key(ctrl:up)

test ("edit last message"):
    key(ctrl-up)

test ("zoom in"):
    key(ctrl-+)

test ("zoom out"):
    key(ctrl--)