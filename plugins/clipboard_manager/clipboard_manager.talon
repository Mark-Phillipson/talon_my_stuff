settings():
    user.clipboard_manager_max_rows = 26

clippy:                     user.clipboard_manager_toggle()

paste <number_small> [and <number_small>]*:
    user.clipboard_manager_paste(number_small_list)
paste <user.ordinals_small> [and <user.ordinals_small>]*:
    user.clipboard_manager_paste(ordinals_small_list)

paste special <number_small> [and <number_small>]*:
    user.clipboard_manager_paste(number_small_list, 1)
paste special <user.ordinals_small> [and <user.ordinals_small>]*:
    user.clipboard_manager_paste(ordinals_small_list, 1)
# PowerToys
advanced paste: key(super-shift-v)
paste as text: key(super-ctrl-alt-v)
