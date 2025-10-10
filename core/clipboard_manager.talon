settings():
    user.clipboard_manager_max_rows = 26
    # Set to false if you want clipboard history to include dictation operations
    user.clipboard_manager_ignore_dictation = true
    # Minimum time (in seconds) between clipboard updates to prevent rapid internal operations
    user.clipboard_manager_min_time_between_updates = 0.5

clippy: user.clipboard_manager_toggle()

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

# Toggle dictation filtering
clippy toggle dictation filtering: user.clipboard_manager_toggle_dictation_filtering()
