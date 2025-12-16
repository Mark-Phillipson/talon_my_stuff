app: Zoom Meetings
# assumes talon is awake, zoom is muted
-
unmute [zoom]:
    key(alt-a)
    speech.disable()
share screen:
    key(alt-s)
end meeting confirm:
    key(alt-q)
hide meeting controls:
    key(ctrl-shift-alt-h)
