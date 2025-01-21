#mode: user.face_mode
#-

# Get out of cursor mode
#^cursor mode$:
#    mode.disable("user.face_mode")

#Facial actions
#face(open_mouth:start): key(space)
#face(open_mouth:stop): insert("open stop")
#face(raise_eyebrows): mouse_click(0)
#face(pucker_lips_outwards): mouse_click(1)
#face(pucker_lips_left): user.mouse_drag()
#face(pucker_lips_right):
#face(smile): user.mouse_scroll_up_continuous()
#face(jaw_open): user.mouse_scroll_down_continuous()
#face(gaze_in_left): key(left)
#face(gaze_in_right): key(right)
#face(mouth_pucker): key(space )
#face(blink_left): user.mouse_scroll_scroll_stop()
#face(blink_left): insert("blink left")
