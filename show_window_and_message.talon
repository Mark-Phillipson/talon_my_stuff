show window demo:
    user.show_window_and_message("Some Prompt!", "Talon Message Box", "OK")

show yes no demo:
    user.show_yes_no_message_box("Do you want to continue?", "Confirm")

show yes no auto message:
    user.show_yes_no_message_box("Do you want to continue?", "Confirm", "message")

show yes no auto notify:
    user.show_yes_no_message_box("Do you want to continue?", "Confirm", "notify")

show yes no auto run demo:
    user.confirm_and_run_actions("Run demo follow-up action?", "Confirm", "show_yes_no_demo_follow_up")

get yes no result:
    response = user.get_yes_no_message_box_result()
    insert(response)

show yes no result:
    response = user.get_yes_no_message_box_result()
    user.show_window_and_message(response, "Yes No Result", "OK")
