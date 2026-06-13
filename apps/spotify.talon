app: spotify
-

# =========================
# Spotify basic controls
# =========================
new playlist: key(ctrl-n)
play song: key(space)

pause song: key(space)

toggle music: key(space)

next song: key(ctrl-right)

previous song: key(ctrl-left)

volume up: key(ctrl-up)

volume down: key(ctrl-down)

[spotify] search: key(ctrl-l)

[spotify] queue: key(alt-shift-q)

now playing: key(alt-shift-j)

[spotify] settings: key(ctrl-,)

[spotify] shortcuts: key(ctrl-/)

# =========================
# Device switching
# =========================
#
# These depend on the current Spotify UI layout.
# You may need to tweak the tab counts.
#
# Recommended:
# Open Spotify first and test slowly.
#
[Spotify] devices:
    user.mouse_helper_position_save()
    user.mouse_helper_move_image_relative("2026-06-08_13.50.18.533698.png", 0)
    sleep(0.05)
    mouse_click(0)
    sleep(0.05)
    user.mouse_helper_position_restore()
[Spotify] devices:
    user.mouse_helper_position_save()
    user.mouse_helper_move_image_relative("2026-06-08_13.41.45.394678.png", 0)
    sleep(0.05)
    mouse_click(0)
    sleep(0.05)
    user.mouse_helper_position_restore()
[spotify] devices:
    user.mouse_helper_position_save()
    user.mouse_helper_move_image_relative("2026-05-13_16.45.46.133656.png", 0)
    sleep(0.05)
    mouse_click(0)
    sleep(0.05)
    user.mouse_helper_position_restore()
[spotify] devices:
    user.mouse_helper_position_save()
    user.mouse_helper_move_image_relative("2026-05-13_16.01.18.129577.png", 0)
    sleep(0.05)
    mouse_click(0)
    sleep(0.05)
    user.mouse_helper_position_restore()
[spotify] devices:
    user.mouse_helper_position_save()
    user.mouse_helper_move_image_relative("2026-05-13_15.57.53.787853.png", 0)
    sleep(0.05)
    mouse_click(0)
    sleep(0.05)
    user.mouse_helper_position_restore()

# =========================
# Useful navigation
# =========================

go home: key(alt-shift-h)

go library: key(alt-shift-b)

back page: key(alt-left)

forward page: key(alt-right)

focus filter: key(ctrl-f)
