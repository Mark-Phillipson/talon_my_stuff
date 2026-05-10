#Microsoft Power Toys
^power [command] [palette]$: key(super-alt-space)
^switch windows$:
    key(super-alt-space)
    sleep(0.05)
    key(<)
^clipboard history$:
    key(super-alt-space)
    sleep(0.05)
    insert("clipboard history")
    sleep(0.05)
    key(enter)
