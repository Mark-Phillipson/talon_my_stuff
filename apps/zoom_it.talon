# Voice commands for ZoomIt drawing tools

# Example of Drawing an Red Arrow:
# draw it, draw arrow, pen red, pen thicker tenth, drag and release, arrow stop, exit draw
^zoom it$: key(super-ctrl-f8)
^live zoom$: key(ctrl-4)
^draw it$: key(ctrl-2)
^typing mode$: key(t)
^demo type$: key(ctrl-7)
^take a break$: key(ctrl-3)
# Recording
^zoom it record toggle$: key(ctrl-5)
^record portion$: key(ctrl-shift-5)
^record screen$: key(ctrl-alt-6)
# Snipping
^zoom it snip$: key(ctrl-6)
^zoom it text extract$: key(ctrl-alt-6)
^zoom it scrolling screen$: key(ctrl-8)

# Start ZoomIt drawing mode
draw screen: key(ctrl-2)

# Colors
pen red: key(r)
pen green: key(g)
pen blue: key(b)
pen yellow: key(y)
pen orange: key(o)
pen pink: key(p)

# Highlight colors
highlight yellow: key(shift-y)
highlight green: key(shift-g)
highlight blue: key(shift-b)

# Undo / clear / exit
undo draw: key(ctrl-z)
clear drawings: key(e)
exit draw: key(esc)

# Pen thickness
pen thicker: key(ctrl-mouse_scroll_up)
pen thinner: key(ctrl-mouse_scroll_down)

# Shape helpers
# These hold modifier keys while you draw with the mouse

draw rectangle: key(ctrl:down)

rectangle stop: key(ctrl:up)

draw arrow:
    key(ctrl:down)
    key(shift:down)

arrow stop:
    key(shift:up)
    key(ctrl:up)

draw line: key(shift:down)

line stop: key(shift:up)

draw circle: key(tab:down)

circle stop: key(tab:up)
stop everything:
    key(ctrl:up)
    key(shift:up)
    key(tab:up)
