# Talon Cheatsheet — Global


## 🎤 Voice Control


### 1. `(voice typing in code)`

**Action:**
```
user.switcher_focus("code") 
    speech.disable() 
    sleep(500ms) 
    key(ctrl-n) 
    sle
```

**Source:** `global_customisations.talon`

---

### 2. `^game mode off$`

**Action:**
```
mode.disable("game")
```

**Source:** `global.talon`

---

### 3. `^game mode$`

**Action:**
```
mode.enable("game") 
    mode.enable("command") 
    mode.disable("dictation") 
    mode.disab
```

**Source:** `global.talon`

---

### 4. `^model (this`

**Action:**
```
# Select all text and runs a model prompt on the text and pastes the results BELOW. 
    key(ctr
```

**Source:** `gpt.talon`

---

### 5. `^talon restart$`

**Action:**
```
user.talon_restart()
```

**Source:** `talon_helpers.talon`

---

### 6. `aircraft mode`

**Action:**
```
key(q)
```

**Source:** `gates_of_hell.talon`

---

### 7. `change fire mode`

**Action:**
```
key({)
```

**Source:** `gates_of_hell.talon`

---

### 8. `change movement mode`

**Action:**
```
key(})
```

**Source:** `gates_of_hell.talon`

---

### 9. `computer <user.modelPrompt> [{user.modelSource}] [{user.modelDestination}]$`

**Action:**
```
modelDestination = modelDestination or "to speech" 
    user.gpt_apply_prompt(modelPrompt, model
```

**Source:** `gpt.talon`

---

### 10. `computer sleep confirm`

**Action:**
```
speech.disable() 
    key(super-r) 
    sleep(300ms) 
    insert("cmd") 
    sleep(300ms)
```

**Source:** `global_customisations.talon`

---

### 11. `dictation <user.text>`

**Action:**
```
insert(text)
```

**Source:** `global_customisations.talon`

---

### 12. `drowse`

**Action:**
```
#app.notify('I feel drowsy.', 'Talon Now Sleeping', 'DROWSE', true) 
    speech.disable()
```

**Source:** `global_customisations.talon`

---

### 13. `launch dictation chat`

**Action:**
```
user.open_url("http://localhost:5000/chat")
```

**Source:** `global_code_writing_helper.talon`

---

### 14. `mode`

**Action:**
```
dictation
```

**Source:** `dictation_mixed_modes.talon`

---

### 15. `mode`

**Action:**
```
mixed
```

**Source:** `dictation_mixed_modes.talon`

---

### 16. `mode`

**Action:**
```
command
```

**Source:** `dictation_mixed_modes.talon`

---

### 17. `mode`

**Action:**
```
sleep
```

**Source:** `sleep_mode.talon`

---

### 18. `mode`

**Action:**
```
sleep
```

**Source:** `deck_and_sleeping.talon`

---

### 19. `mode`

**Action:**
```
command
```

**Source:** `global_not_visual_studio.talon`

---

### 20. `mode`

**Action:**
```
dictation
```

**Source:** `global_not_visual_studio.talon`

---

### 21. `talon create app context`

**Action:**
```
user.talon_create_app_context()
```

**Source:** `talon_helpers.talon`

---

### 22. `talon lists show [<user.text>]`

**Action:**
```
user.show_talon_lists(user.text or "")
```

**Source:** `global.talon`

---

### 23. `talon menu`

**Action:**
```
key(super-b) 
    sleep(50ms) 
    key(right) 
    sleep(50ms) 
    key(menu) 
    sleep(50m
```

**Source:** `global_customisations.talon`

---

### 24. `talon open repl`

**Action:**
```
menu.open_repl()
```

**Source:** `talon_helpers.talon`

---

### 25. `talon print <user.text> actions`

**Action:**
```
print(" \n{user.talon_get_actions_search(text)}")
```

**Source:** `talon_helpers.talon`

---

### 26. `talon print actions`

**Action:**
```
print(" \n{user.talon_get_actions()}")
```

**Source:** `talon_helpers.talon`

---

### 27. `talon print actions long`

**Action:**
```
print(" \n{user.talon_get_actions_long()}")
```

**Source:** `talon_helpers.talon`

---

### 28. `talon print captures`

**Action:**
```
print(" \n{user.talon_get_captures()}")
```

**Source:** `talon_helpers.talon`

---

### 29. `talon print context`

**Action:**
```
name = app.name() 
    executable = app.executable() 
    title = win.title() 
    print("Name
```

**Source:** `talon_helpers.talon`

---

### 30. `talon print core`

**Action:**
```
print(" \n{user.talon_get_core()}")
```

**Source:** `talon_helpers.talon`

---

### 31. `talon print list problems`

**Action:**
```
user.talon_print_list_problems()
```

**Source:** `talon_helpers.talon`

---

### 32. `talon print lists`

**Action:**
```
print(" \n{user.talon_get_lists()}")
```

**Source:** `talon_helpers.talon`

---

### 33. `talon print modes`

**Action:**
```
print(" \n{user.talon_get_modes()}")
```

**Source:** `talon_helpers.talon`

---

### 34. `talon print name`

**Action:**
```
print(app.name())
```

**Source:** `talon_helpers.talon`

---

### 35. `talon print tags`

**Action:**
```
print(" \n{user.talon_get_tags()}")
```

**Source:** `talon_helpers.talon`

---

### 36. `talon print title`

**Action:**
```
print(win.title())
```

**Source:** `talon_helpers.talon`

---

### 37. `talon relaunch`

**Action:**
```
talon_relaunch()
```

**Source:** `global_customisations.talon`

---

### 38. `talon sim <phrase>$`

**Action:**
```
user.talon_sim_phrase(phrase)
```

**Source:** `talon_helpers.talon`

---

### 39. `Toggle control mode`

**Action:**
```
key(t)
```

**Source:** `gates_of_hell.talon`

---

### 40. `vision mode`

**Action:**
```
key(0)
```

**Source:** `gates_of_hell.talon`

---

### 41. `voice typing`

**Action:**
```
speech.disable() 
    sleep(20ms) 
    key(super-h)
```

**Source:** `global_customisations.talon`

---


## 🖱️ Mouse Control


### 42. `(lower`

**Action:**
```
position_x = user.query_mouse_position_x() 
    position_y = user.query_mouse_position_y()
```

**Source:** `mouse.talon`

---

### 43. `(lower`

**Action:**
```
position_x = user.query_mouse_position_x() 
    position_y = user.query_mouse_position_y()
```

**Source:** `mouse.talon`

---

### 44. `(right click)`

**Action:**
```
# close zoom if open 
    tracking.zoom_cancel() 
    mouse_click(1) 
    # close the mouse gr
```

**Source:** `mouse.talon`

---

### 45. `(up`

**Action:**
```
position_x = user.query_mouse_position_x() 
    position_y = user.query_mouse_position_y()
```

**Source:** `mouse.talon`

---

### 46. `(upper`

**Action:**
```
position_x = user.query_mouse_position_x() 
    position_y = user.query_mouse_position_y()
```

**Source:** `mouse.talon`

---

### 47. `(upper`

**Action:**
```
position_x = user.query_mouse_position_x() 
    position_y = user.query_mouse_position_y()
```

**Source:** `mouse.talon`

---

### 48. `<user.screen_step_one> (menu`

**Action:**
```
mouse_move(screen_step_one, 80) 
    mouse_click(0)
```

**Source:** `mouse.talon`

---

### 49. `<user.screen_step_one> <user.screen_step_vertical> (click`

**Action:**
```
vertical = screen_step_vertical + 30 
    mouse_move(screen_step_one, vertical) 
    mouse_clic
```

**Source:** `mouse.talon`

---

### 50. `<user.screen_step_one> <user.screen_step_vertical> (move`

**Action:**
```
vertical = screen_step_vertical + 30 
    mouse_move(screen_step_one, vertical)
```

**Source:** `mouse.talon`

---

### 51. `<user.screen_step_one> <user.screen_step_vertical> righty`

**Action:**
```
vertical = screen_step_vertical + 30 
    mouse_move(screen_step_one, vertical) 
    mouse_clic
```

**Source:** `mouse.talon`

---

### 52. `<user.screen_step_one> apex`

**Action:**
```
mouse_move(-380, 45) 
    mouse_move(screen_step_one, 45) 
    mouse_click(0)
```

**Source:** `mouse.talon`

---

### 53. `<user.screen_step_one> ribbon`

**Action:**
```
mouse_move(screen_step_one, 80) 
    mouse_click(0)
```

**Source:** `mouse.talon`

---

### 54. `<user.screen_step_one> taskbar`

**Action:**
```
mouse_move(screen_step_one, 1050) 
    mouse_click(0)
```

**Source:** `mouse.talon`

---

### 55. `<user.screen_step_two> (menu`

**Action:**
```
mouse_move(screen_step_two, 52) 
    mouse_click(0)
```

**Source:** `mouse.talon`

---

### 56. `<user.screen_step_two> <user.screen_step_vertical_monitor_two> (click`

**Action:**
```
mouse_move(screen_step_two, screen_step_vertical_monitor_two) 
    mouse_click(0)
```

**Source:** `mouse.talon`

---

### 57. `<user.screen_step_two> <user.screen_step_vertical_monitor_two> (move`

**Action:**
```
vertical = screen_step_vertical_monitor_two 
    mouse_move(screen_step_two, vertical)
```

**Source:** `mouse.talon`

---

### 58. `<user.screen_step_two> <user.screen_step_vertical_monitor_two> righty`

**Action:**
```
mouse_move(screen_step_two, screen_step_vertical_monitor_two) 
    mouse_click(1)
```

**Source:** `mouse.talon`

---

### 59. `<user.screen_step_two> apex`

**Action:**
```
mouse_move(screen_step_two, 10) 
    mouse_click(0)
```

**Source:** `mouse.talon`

---

### 60. `<user.screen_step_two> taskbar`

**Action:**
```
mouse_move(screen_step_two, 1050) 
    mouse_click(0)
```

**Source:** `mouse.talon`

---

### 61. `click`

**Action:**
```
mouse_click(0)
```

**Source:** `global_customisations.talon`

---

### 62. `click and sleep`

**Action:**
```
mouse_click(0) 
    speech.disable()
```

**Source:** `global_customisations.talon`

---

### 63. `click drowse`

**Action:**
```
speech.disable() 
    mouse_click(0)
```

**Source:** `global_customisations.talon`

---

### 64. `continuous`

**Action:**
```
user.mouse_scroll_down_continuous()
```

**Source:** `mouse.talon`

---

### 65. `down <user.number_signed_small> (click`

**Action:**
```
position_x = user.query_mouse_position_x() 
    position_y = user.query_mouse_position_y()
```

**Source:** `mouse.talon`

---

### 66. `drag nine o'clock`

**Action:**
```
user.mouse_drag(0) 
    sleep(100ms) 
    position_x = user.query_mouse_position_x() 
    posi
```

**Source:** `mouse.talon`

---

### 67. `drag six o'clock`

**Action:**
```
user.mouse_drag(0) 
    sleep(100ms) 
    position_x = user.query_mouse_position_x() 
    posi
```

**Source:** `mouse.talon`

---

### 68. `drag three o'clock`

**Action:**
```
user.mouse_drag(0) 
    sleep(100ms) 
    position_x = user.query_mouse_position_x() 
    posi
```

**Source:** `mouse.talon`

---

### 69. `drag twelve o'clock`

**Action:**
```
user.mouse_drag(0) 
    sleep(100ms) 
    position_x = user.query_mouse_position_x() 
    posi
```

**Source:** `mouse.talon`

---

### 70. `grid left`

**Action:**
```
user.grid_select_screen(1) 
    user.grid_activate()
```

**Source:** `mouse.talon`

---

### 71. `grid right`

**Action:**
```
user.grid_select_screen(2) 
    user.grid_activate()
```

**Source:** `mouse.talon`

---

### 72. `high) left <user.number_signed_small>`

**Action:**
```
position_x = user.query_mouse_position_x() 
    position_y = user.query_mouse_position_y()
```

**Source:** `mouse.talon`

---

### 73. `high) right <user.number_signed_small>`

**Action:**
```
position_x = user.query_mouse_position_x() 
    position_y = user.query_mouse_position_y()
```

**Source:** `mouse.talon`

---

### 74. `hover`

**Action:**
```
user.move_cursor_to_gaze_point()
```

**Source:** `global.talon`

---

### 75. `leaf)`

**Action:**
```
mouse_move(screen_step_one, 80) 
    mouse_click(0)
```

**Source:** `mouse.talon`

---

### 76. `leaf)`

**Action:**
```
mouse_move(screen_step_two, 52) 
    mouse_click(0)
```

**Source:** `mouse.talon`

---

### 77. `left <user.number_signed_small> (click`

**Action:**
```
position_x = user.query_mouse_position_x() 
    position_y = user.query_mouse_position_y()
```

**Source:** `mouse.talon`

---

### 78. `left mouse down`

**Action:**
```
user.mouse_drag(0)
```

**Source:** `mouse.talon`

---

### 79. `low) left <user.number_signed_small>`

**Action:**
```
position_x = user.query_mouse_position_x() 
    position_y = user.query_mouse_position_y()
```

**Source:** `mouse.talon`

---

### 80. `low) right <user.number_signed_small>`

**Action:**
```
position_x = user.query_mouse_position_x() 
    position_y = user.query_mouse_position_y()
```

**Source:** `mouse.talon`

---

### 81. `mouse down <number>`

**Action:**
```
position_x = user.query_mouse_position_x() 
    position_y = user.query_mouse_position_y()
```

**Source:** `mouse.talon`

---

### 82. `mouse last position`

**Action:**
```
mouse_coordinates = clip.text() 
    user.move_mouse_from_string(mouse_coordinates)
```

**Source:** `global.talon`

---

### 83. `mouse left <number>`

**Action:**
```
position_x = mouse_x() 
    position_y = mouse_y() 
    mouse_move(position_x - number, positio
```

**Source:** `mouse.talon`

---

### 84. `mouse right <number>`

**Action:**
```
position_x = user.query_mouse_position_x() 
    position_y = user.query_mouse_position_y()
```

**Source:** `mouse.talon`

---

### 85. `mouse test`

**Action:**
```
position_x = user.query_mouse_position_x() 
    position_y = user.query_mouse_position_y()
```

**Source:** `mouse.talon`

---

### 86. `mouse up <number>`

**Action:**
```
position_x = user.query_mouse_position_x() 
    position_y = user.query_mouse_position_y()
```

**Source:** `mouse.talon`

---

### 87. `position)`

**Action:**
```
vertical = screen_step_vertical + 30 
    mouse_move(screen_step_one, vertical)
```

**Source:** `mouse.talon`

---

### 88. `position)`

**Action:**
```
vertical = screen_step_vertical_monitor_two 
    mouse_move(screen_step_two, vertical)
```

**Source:** `mouse.talon`

---

### 89. `raise) <user.number_signed_small> (click`

**Action:**
```
position_x = user.query_mouse_position_x() 
    position_y = user.query_mouse_position_y()
```

**Source:** `mouse.talon`

---

### 90. `right <user.number_signed_small> (click`

**Action:**
```
position_x = user.query_mouse_position_x() 
    position_y = user.query_mouse_position_y()
```

**Source:** `mouse.talon`

---

### 91. `right mouse down`

**Action:**
```
user.mouse_drag(1)
```

**Source:** `mouse.talon`

---

### 92. `righty`

**Action:**
```
# close zoom if open 
    tracking.zoom_cancel() 
    mouse_click(1) 
    # close the mouse gr
```

**Source:** `mouse.talon`

---

### 93. `screen <user.number_key>+`

**Action:**
```
user.grid_select_screen(2) 
    user.grid_activate() 
    user.grid_narrow_list(number_key_list)
```

**Source:** `mouse.talon`

---

### 94. `spin down`

**Action:**
```
user.mouse_scroll_down_continuous()
```

**Source:** `mouse.talon`

---

### 95. `spin up`

**Action:**
```
user.mouse_scroll_up_continuous()
```

**Source:** `mouse.talon`

---

### 96. `stop`

**Action:**
```
user.mouse_scroll_stop()
```

**Source:** `mouse.talon`

---

### 97. `taskbar <user.screen_step_two> <user.number_signed_small>`

**Action:**
```
mouse_move(screen_step_two, 1050) 
    position_x = user.query_mouse_position_x() 
    position
```

**Source:** `mouse.talon`

---

### 98. `touch)`

**Action:**
```
vertical = screen_step_vertical + 30 
    mouse_move(screen_step_one, vertical) 
    mouse_clic
```

**Source:** `mouse.talon`

---

### 99. `touch)`

**Action:**
```
mouse_move(screen_step_two, screen_step_vertical_monitor_two) 
    mouse_click(0)
```

**Source:** `mouse.talon`

---

### 100. `touch)`

**Action:**
```
position_x = user.query_mouse_position_x() 
    position_y = user.query_mouse_position_y()
```

**Source:** `mouse.talon`

---

### 101. `touch)`

**Action:**
```
position_x = user.query_mouse_position_x() 
    position_y = user.query_mouse_position_y()
```

**Source:** `mouse.talon`

---

### 102. `touch)`

**Action:**
```
position_x = user.query_mouse_position_x() 
    position_y = user.query_mouse_position_y()
```

**Source:** `mouse.talon`

---

### 103. `touch)`

**Action:**
```
position_x = user.query_mouse_position_x() 
    position_y = user.query_mouse_position_y()
```

**Source:** `mouse.talon`

---

### 104. `we'll stop`

**Action:**
```
user.mouse_scroll_stop()
```

**Source:** `mouse.talon`

---

### 105. `will stop`

**Action:**
```
user.mouse_scroll_stop()
```

**Source:** `mouse.talon`

---


## 🧭 Navigation


### 106. `(end tracking)`

**Action:**
```
key(ctrl-alt-[)
```

**Source:** `global_customisations.talon`

---

### 107. `base`

**Action:**
```
key(home)
```

**Source:** `global_customisations.talon`

---

### 108. `descend`

**Action:**
```
key(ctrl)
```

**Source:** `colbot.talon`

---

### 109. `descend`

**Action:**
```
key(menu)
```

**Source:** `gates_of_hell.talon`

---

### 110. `descend helicopter`

**Action:**
```
key(lalt)
```

**Source:** `gates_of_hell.talon`

---

### 111. `double (base`

**Action:**
```
key(home) 
    sleep(100ms) 
    key(home)
```

**Source:** `global_customisations.talon`

---

### 112. `end turn`

**Action:**
```
mouse_move(1770, 1025) 
    sleep(100ms) 
    mouse_click(0)
```

**Source:** `sanctus_reach.talon`

---

### 113. `fly <user.arrow_key>`

**Action:**
```
key(arrow_key) 
    repeat(7) 
    sleep(50ms) 
    key(arrow_key) 
    repeat(7) 
    sleep
```

**Source:** `colbot.talon`

---

### 114. `fly <user.arrow_key>`

**Action:**
```
key(arrow_key) 
    repeat(14)
```

**Source:** `company_of_heroes_2.talon`

---

### 115. `fly <user.arrow_key>`

**Action:**
```
key(arrow_key) 
    repeat(4) 
    sleep(50ms) 
    key(arrow_key) 
    repeat(4) 
    sleep
```

**Source:** `last_train_home.talon`

---

### 116. `fly <user.arrow_key>`

**Action:**
```
key(arrow_key) 
    repeat(4) 
    sleep(50ms) 
    key(arrow_key) 
    repeat(4) 
    sleep
```

**Source:** `sanctus_reach.talon`

---

### 117. `fly <user.arrow_key>`

**Action:**
```
key(arrow_key) 
    repeat(4) 
    sleep(50ms) 
    key(arrow_key) 
    repeat(4) 
    sleep
```

**Source:** `there_came_an_echo.talon`

---

### 118. `fly down`

**Action:**
```
key(s) 
    repeat(20) 
    sleep(50ms) 
    key(s) 
    repeat(20) 
    sleep(50ms)
```

**Source:** `gates_of_hell.talon`

---

### 119. `fly left`

**Action:**
```
key(a) 
    repeat(20) 
    sleep(50ms) 
    key(a) 
    repeat(20) 
    sleep(50ms)
```

**Source:** `gates_of_hell.talon`

---

### 120. `fly right`

**Action:**
```
key(d) 
    repeat(20) 
    sleep(50ms) 
    key(d) 
    repeat(20) 
    sleep(50ms)
```

**Source:** `gates_of_hell.talon`

---

### 121. `fly up`

**Action:**
```
key(w) 
    repeat(20) 
    sleep(50ms) 
    key(w) 
    repeat(20) 
    sleep(50ms)
```

**Source:** `gates_of_hell.talon`

---

### 122. `go end`

**Action:**
```
key(end)
```

**Source:** `dictation_mixed_modes.talon`

---

### 123. `go home`

**Action:**
```
key(home)
```

**Source:** `company_of_heroes_2.talon`

---

### 124. `home`

**Action:**
```
key(home)
```

**Source:** `global_customisations.talon`

---

### 125. `home)`

**Action:**
```
key(home) 
    sleep(100ms) 
    key(home)
```

**Source:** `global_customisations.talon`

---

### 126. `move down <number_small>`

**Action:**
```
key(down) 
    repeat(number_small-1)
```

**Source:** `global_code_writing_helper.talon`

---

### 127. `move left`

**Action:**
```
key(left)
```

**Source:** `colbot.talon`

---

### 128. `move left`

**Action:**
```
key(left)
```

**Source:** `company_of_heroes_2.talon`

---

### 129. `move left <number_small>`

**Action:**
```
key(left) 
    repeat(number_small-1)
```

**Source:** `global_code_writing_helper.talon`

---

### 130. `move right`

**Action:**
```
key(right)
```

**Source:** `colbot.talon`

---

### 131. `move right`

**Action:**
```
key(right)
```

**Source:** `company_of_heroes_2.talon`

---

### 132. `move right <number_small>`

**Action:**
```
key(right) 
    repeat(number_small-1)
```

**Source:** `global_code_writing_helper.talon`

---

### 133. `move up <number_small>`

**Action:**
```
key(up) 
    repeat(number_small-1)
```

**Source:** `global_customisations.talon`

---

### 134. `move up <number_small>`

**Action:**
```
key(up) 
    repeat(number_small-1)
```

**Source:** `global_code_writing_helper.talon`

---

### 135. `talon open home`

**Action:**
```
menu.open_talon_home()
```

**Source:** `talon_helpers.talon`

---


## ✏️ Text Editing


### 136. `(double quotes in)`

**Action:**
```
insert("\"\"") 
    sleep(300ms) 
    key(left)
```

**Source:** `global_code_writing_helper.talon`

---

### 137. `(double quotes out)`

**Action:**
```
insert("\"\"")
```

**Source:** `global_code_writing_helper.talon`

---

### 138. `(quotes in)`

**Action:**
```
insert("\"\"") 
    sleep(300ms) 
    key(left)
```

**Source:** `global_code_writing_helper.talon`

---

### 139. `(quotes out)`

**Action:**
```
insert("\"\"")
```

**Source:** `global_code_writing_helper.talon`

---

### 140. `[curly] braces in`

**Action:**
```
insert("{}") 
    sleep(300ms) 
    key(left)
```

**Source:** `global_code_writing_helper.talon`

---

### 141. `[curly] braces out`

**Action:**
```
insert("{}")
```

**Source:** `global_code_writing_helper.talon`

---

### 142. `^backspace`

**Action:**
```
key(backspace)
```

**Source:** `dictation_mixed_modes.talon`

---

### 143. `^backspace <user.ordinals_small>`

**Action:**
```
key("backspace:{ordinals_small}")
```

**Source:** `dictation_mixed_modes.talon`

---

### 144. `^delete`

**Action:**
```
key(delete)
```

**Source:** `dictation_mixed_modes.talon`

---

### 145. `^delete <user.ordinals_small>`

**Action:**
```
key("delete:{ordinals_small}")
```

**Source:** `dictation_mixed_modes.talon`

---

### 146. `angle brackets in`

**Action:**
```
insert("<>") 
    sleep(300ms) 
    key(left)
```

**Source:** `global_code_writing_helper.talon`

---

### 147. `backspace`

**Action:**
```
key(backspace)
```

**Source:** `global_customisations.talon`

---

### 148. `backspace <user.number_signed_small>`

**Action:**
```
key(backspace) 
    repeat(number_signed_small-1)
```

**Source:** `global_customisations.talon`

---

### 149. `brackets in`

**Action:**
```
insert("()") 
    sleep(300ms) 
    key(left)
```

**Source:** `global_code_writing_helper.talon`

---

### 150. `brackets out`

**Action:**
```
insert("()")
```

**Source:** `global_code_writing_helper.talon`

---

### 151. `delete`

**Action:**
```
key(delete)
```

**Source:** `global_customisations.talon`

---

### 152. `delete <user.number_signed_small>`

**Action:**
```
key(delete) 
    repeat(number_signed_small-1)
```

**Source:** `global_customisations.talon`

---

### 153. `fresh line`

**Action:**
```
key(end) 
    key(enter)
```

**Source:** `dictation_mixed_modes.talon`

---

### 154. `fresh line above`

**Action:**
```
key(home) 
    key(home) 
    key(enter) 
    key(up)
```

**Source:** `dictation_mixed_modes.talon`

---

### 155. `help search selection`

**Action:**
```
key(ctrl-c) 
    sleep(500ms) 
    text = clip.text() 
    user.help_search(text)
```

**Source:** `global.talon`

---

### 156. `left select`

**Action:**
```
key(ctrl-shift-left)
```

**Source:** `global_code_writing_helper.talon`

---

### 157. `move line into braces`

**Action:**
```
key(end) 
    key(down down) 
    key(home) 
    key(shift-end) 
    key(delete) 
    key(de
```

**Source:** `global_code_writing_helper.talon`

---

### 158. `new block brackets`

**Action:**
```
key(end) 
    key(enter) 
    insert("{}") 
    key(left) 
    sleep(100ms) 
    key(enter)
```

**Source:** `global_code_writing_helper.talon`

---

### 159. `redo`

**Action:**
```
key(ctrl-y)
```

**Source:** `global_customisations.talon`

---

### 160. `right select`

**Action:**
```
key(ctrl-shift-right)
```

**Source:** `global_code_writing_helper.talon`

---

### 161. `select box`

**Action:**
```
position_x = user.query_mouse_position_x() 
    position_y = user.query_mouse_position_y()
```

**Source:** `last_train_home.talon`

---

### 162. `select rest of line`

**Action:**
```
key(shift-end)
```

**Source:** `global_customisations.talon`

---

### 163. `selection circle`

**Action:**
```
key(j)
```

**Source:** `gates_of_hell.talon`

---

### 164. `take line`

**Action:**
```
key(end) 
    sleep(50ms) 
    key(shift-home)
```

**Source:** `global_customisations.talon`

---

### 165. `undo`

**Action:**
```
key(ctrl-z)
```

**Source:** `global_customisations.talon`

---

### 166. `undo <user.number_signed_small>`

**Action:**
```
key(ctrl-z) 
    repeat(number_signed_small-1)
```

**Source:** `global_customisations.talon`

---


## 📋 Clipboard


### 167. `(clipboard search)`

**Action:**
```
key(ctrl-shift-f12)
```

**Source:** `global_customisations.talon`

---

### 168. `(search clipboard)`

**Action:**
```
key(ctrl-shift-f12)
```

**Source:** `global_customisations.talon`

---

### 169. `^read clipboard`

**Action:**
```
text = clip.text() 
    user.tts(text)
```

**Source:** `gpt.talon`

---

### 170. `advanced paste`

**Action:**
```
key(super-shift-v)
```

**Source:** `clipboard_manager.talon`

---

### 171. `clippy`

**Action:**
```
user.clipboard_manager_toggle()
```

**Source:** `clipboard_manager.talon`

---

### 172. `clippy chuck <number_small> [and <number_small>]*`

**Action:**
```
user.clipboard_manager_remove(number_small_list)
```

**Source:** `clipboard_manager_open.talon`

---

### 173. `clippy clear`

**Action:**
```
user.clipboard_manager_remove()
```

**Source:** `clipboard_manager_open.talon`

---

### 174. `clippy copy <number_small> [and <number_small>]*`

**Action:**
```
user.clipboard_manager_copy(number_small_list)
```

**Source:** `clipboard_manager_open.talon`

---

### 175. `clippy split <number_small> [and <number_small>]*`

**Action:**
```
user.clipboard_manager_split(number_small_list)
```

**Source:** `clipboard_manager_open.talon`

---

### 176. `clippy stay`

**Action:**
```
user.clipboard_manager_toggle_sticky()
```

**Source:** `clipboard_manager_open.talon`

---

### 177. `open clipboard`

**Action:**
```
key(super-v)
```

**Source:** `global_customisations.talon`

---

### 178. `paste <number_small> [and <number_small>]*`

**Action:**
```
user.clipboard_manager_paste(number_small_list)
```

**Source:** `clipboard_manager.talon`

---

### 179. `paste <user.ordinals_small> [and <user.ordinals_small>]*`

**Action:**
```
user.clipboard_manager_paste(ordinals_small_list)
```

**Source:** `clipboard_manager.talon`

---

### 180. `paste as text`

**Action:**
```
key(super-ctrl-alt-v)
```

**Source:** `clipboard_manager.talon`

---

### 181. `paste special <number_small> [and <number_small>]*`

**Action:**
```
user.clipboard_manager_paste(number_small_list, 1)
```

**Source:** `clipboard_manager.talon`

---

### 182. `paste special <user.ordinals_small> [and <user.ordinals_small>]*`

**Action:**
```
user.clipboard_manager_paste(ordinals_small_list, 1)
```

**Source:** `clipboard_manager.talon`

---

### 183. `select and copy`

**Action:**
```
key(ctrl-a) 
    sleep(100ms) 
    key(ctrl-c) 
    sleep(100ms)
```

**Source:** `global_customisations.talon`

---

### 184. `talon copy <user.text> actions`

**Action:**
```
clip.set_text(user.talon_get_actions_search(text))
```

**Source:** `talon_helpers.talon`

---

### 185. `talon copy actions`

**Action:**
```
clip.set_text(user.talon_get_actions())
```

**Source:** `talon_helpers.talon`

---

### 186. `talon copy actions long`

**Action:**
```
clip.set_text(user.talon_get_actions_long())
```

**Source:** `talon_helpers.talon`

---

### 187. `talon copy captures`

**Action:**
```
clip.set_text(user.talon_get_captures())
```

**Source:** `talon_helpers.talon`

---

### 188. `talon copy commands`

**Action:**
```
user.help_copy_all_commands()
```

**Source:** `talon_helpers.talon`

---

### 189. `talon copy core`

**Action:**
```
clip.set_text(user.talon_get_core())
```

**Source:** `talon_helpers.talon`

---

### 190. `talon copy modes`

**Action:**
```
clip.set_text(user.talon_get_modes())
```

**Source:** `talon_helpers.talon`

---

### 191. `talon copy name`

**Action:**
```
clip.set_text(app.name())
```

**Source:** `talon_helpers.talon`

---

### 192. `talon copy python context`

**Action:**
```
user.talon_add_context_clipboard_python()
```

**Source:** `talon_helpers.talon`

---

### 193. `talon copy tags`

**Action:**
```
clip.set_text(user.talon_get_tags())
```

**Source:** `talon_helpers.talon`

---

### 194. `talon copy title`

**Action:**
```
clip.set_text(win.title())
```

**Source:** `talon_helpers.talon`

---


## 🪟 Window Management


### 195. `<user.screen_step_two_commandconquer> <user.screen_step_vertical>`

**Action:**
```
mouse_move(screen_step_two_commandconquer, screen_step_vertical)
```

**Source:** `last_train_home.talon`

---

### 196. `<user.screen_step_two_commandconquer> <user.screen_step_vertical>`

**Action:**
```
mouse_move(screen_step_two_commandconquer, screen_step_vertical)
```

**Source:** `sanctus_reach.talon`

---

### 197. `<user.screen_step_two_commandconquer> <user.screen_step_vertical>`

**Action:**
```
mouse_move(screen_step_two_commandconquer, screen_step_vertical)
```

**Source:** `there_came_an_echo.talon`

---

### 198. `[focus] development template`

**Action:**
```
key(ctrl-alt-shift-t)
```

**Source:** `global_customisations.talon`

---

### 199. `[focus] system tray`

**Action:**
```
key(super-b)
```

**Source:** `global_customisations.talon`

---

### 200. `[touch] screen one`

**Action:**
```
mouse_move(-680, 480) 
    mouse_click(0)
```

**Source:** `global.talon`

---

### 201. `[touch] screen two`

**Action:**
```
mouse_move(986, 470) 
    mouse_click(0)
```

**Source:** `global.talon`

---

### 202. `[windows] switch both`

**Action:**
```
key(super-shift-left) 
    sleep(60ms) 
    key(alt-tab) 
    sleep(60ms) 
    key(super-shif
```

**Source:** `global_customisations.talon`

---

### 203. `focus [talon] community`

**Action:**
```
key(ctrl-alt-shift-y)
```

**Source:** `global_customisations.talon`

---

### 204. `focus [talon] my stuff`

**Action:**
```
key(ctrl-alt-shift-m)
```

**Source:** `global_customisations.talon`

---

### 205. `focus Blazor CRUD`

**Action:**
```
key(ctrl-alt-shift-c)
```

**Source:** `global_customisations.talon`

---

### 206. `focus chrome`

**Action:**
```
user.switcher_focus("chrome.exe")
```

**Source:** `global_customisations.talon`

---

### 207. `focus code`

**Action:**
```
user.switcher_focus("code.exe")
```

**Source:** `global_customisations.talon`

---

### 208. `focus data`

**Action:**
```
user.switcher_focus("Azure Data Studio")
```

**Source:** `global_customisations.talon`

---

### 209. `focus desktop`

**Action:**
```
key(super-d)
```

**Source:** `global_customisations.talon`

---

### 210. `focus edge`

**Action:**
```
user.switcher_focus("msedge.exe")
```

**Source:** `global_customisations.talon`

---

### 211. `focus studio`

**Action:**
```
user.switcher_focus("devenv.exe")
```

**Source:** `global_customisations.talon`

---

### 212. `focus taskbar`

**Action:**
```
key(super-t)
```

**Source:** `global_customisations.talon`

---

### 213. `focus terminal`

**Action:**
```
user.switcher_focus("windowsterminal.exe")
```

**Source:** `global_customisations.talon`

---

### 214. `focus voice admin`

**Action:**
```
key(ctrl-alt-shift-v)
```

**Source:** `global_customisations.talon`

---

### 215. `maximise [window]`

**Action:**
```
key(alt-space) 
    sleep(700ms) 
    key(x)
```

**Source:** `global_customisations.talon`

---

### 216. `minimise [window]`

**Action:**
```
key(alt-space) 
    sleep(400ms) 
    key(n)
```

**Source:** `global_customisations.talon`

---

### 217. `restore [window]`

**Action:**
```
key(alt-space) 
    sleep(400ms) 
    key(r)
```

**Source:** `global_customisations.talon`

---

### 218. `screenshot`

**Action:**
```
key(sysrq)
```

**Source:** `gates_of_hell.talon`

---

### 219. `smokescreen`

**Action:**
```
mouse_click(4)
```

**Source:** `gates_of_hell.talon`

---

### 220. `switch [window]`

**Action:**
```
key(alt-tab)
```

**Source:** `global_customisations.talon`

---

### 221. `switch ammo`

**Action:**
```
key(space)
```

**Source:** `gates_of_hell.talon`

---

### 222. `switch weapon`

**Action:**
```
key(.)
```

**Source:** `gates_of_hell.talon`

---

### 223. `window [monitor] switch`

**Action:**
```
key(super-shift-left)
```

**Source:** `global_customisations.talon`

---

### 224. `windows start <user.text>`

**Action:**
```
key(super) 
    sleep(300ms) 
    insert(text)
```

**Source:** `global_customisations.talon`

---


## 🚀 Application Launcher


### 225. `custom launcher categories`

**Action:**
```
user.open_url("https://github.com/Mark-Phillipson/talon_my_stuff/blob/a3ca27e064553a88fdb597584b8
```

**Source:** `global_code_writing_helper.talon`

---

### 226. `launch code`

**Action:**
```
key(super) 
    sleep(900ms) 
    insert("visual studio code") 
    sleep(900ms) 
    key(enter)
```

**Source:** `global_customisations.talon`

---

### 227. `launch preview`

**Action:**
```
key(super) 
    sleep(900ms) 
    insert("visual studio 2022 preview") 
    sleep(900ms)
```

**Source:** `global_customisations.talon`

---

### 228. `launch realtime`

**Action:**
```
key(super-r) 
    sleep(300ms) 
    insert("cmd") 
    sleep(600ms) 
    key(enter) 
    sle
```

**Source:** `global_code_writing_helper.talon`

---

### 229. `launch voice admin`

**Action:**
```
user.launch_voice_admin()
```

**Source:** `global_code_writing_helper.talon`

---

### 230. `launch {user.launcher_category}`

**Action:**
```
user.run_application_voice_admin_windows_forms_launcher(launcher_category)
```

**Source:** `global_code_writing_helper.talon`

---

### 231. `launch {user.launcher_category} <user.text>`

**Action:**
```
user.run_application_voice_admin_windows_forms_launcher_with_parameter(launcher_category, text)
```

**Source:** `global_code_writing_helper.talon`

---

### 232. `open file manager`

**Action:**
```
key(super-e)
```

**Source:** `global_customisations.talon`

---


## 💻 Development


### 233. `(draft in code)`

**Action:**
```
user.switcher_focus("code") 
    speech.disable() 
    sleep(500ms) 
    key(ctrl-n) 
    sle
```

**Source:** `global_customisations.talon`

---

### 234. `search list <user.text>`

**Action:**
```
user.run_application_voice_admin_windows_forms(text)
```

**Source:** `global_code_writing_helper.talon`

---

### 235. `sharp <user.text>`

**Action:**
```
user.run_application_csharp_database_command(text)
```

**Source:** `global_code_writing_helper.talon`

---

### 236. `{user.snippet_language} {user.snippet_category}`

**Action:**
```
user.run_application_voice_admin_windows_forms_language_category(snippet_language, snippet_category)
```

**Source:** `global_code_writing_helper.talon`

---


## ⚙️ System


### 237. `calculate <user.number_string> times <user.number_string>`

**Action:**
```
value = user.calculate_multiply(number_string_1, number_string_2) 
    insert(value)
```

**Source:** `global_customisations.talon`

---

### 238. `color picker`

**Action:**
```
key(super-shift-c)
```

**Source:** `global_customisations.talon`

---

### 239. `date insert`

**Action:**
```
insert(user.time_format("%d-%m-%Y"))
```

**Source:** `global_customisations.talon`

---

### 240. `enter timestamp`

**Action:**
```
insert(user.time_format("%Y-%m-%d %H:%M:%S"))
```

**Source:** `global_customisations.talon`

---

### 241. `snipping tool`

**Action:**
```
key(super-shift-s)
```

**Source:** `global.talon`

---

### 242. `taskbar toggle`

**Action:**
```
user.toggle_taskbar()
```

**Source:** `global.talon`

---


## 📝 Custom Insertions


### 243. `[enter] army number`

**Action:**
```
insert("24593308")
```

**Source:** `global_customisations.talon`

---

### 244. `[enter] default Github`

**Action:**
```
insert("https://github.com/Mark-Phillipson/BlazorCRUD_UIGenerator")
```

**Source:** `global_customisations.talon`

---

### 245. `[enter] email address`

**Action:**
```
insert("MPhillipson0@Gmail.com")
```

**Source:** `global_customisations.talon`

---

### 246. `[enter] extra email address`

**Action:**
```
insert("Mark.S.Phillipson@outlook.com")
```

**Source:** `global_customisations.talon`

---

### 247. `[enter] my last name`

**Action:**
```
insert("Phillipson")
```

**Source:** `global_customisations.talon`

---

### 248. `[enter] my name`

**Action:**
```
insert("Mark Phillipson")
```

**Source:** `global_customisations.talon`

---

### 249. `[enter] office username`

**Action:**
```
insert("Phillipson@MSPSystems.onmicrosoft.com")
```

**Source:** `global_customisations.talon`

---

### 250. `[enter] password`

**Action:**
```
insert("Blackberry1!")
```

**Source:** `global_customisations.talon`

---

### 251. `[enter] username`

**Action:**
```
insert("MPhil") 
    sleep(100ms) 
    key(tab)
```

**Source:** `global_customisations.talon`

---

### 252. `^enter`

**Action:**
```
key(enter)
```

**Source:** `dictation_mixed_modes.talon`

---

### 253. `enter random numbers`

**Action:**
```
number = user.generate_random_number() 
    insert(number) 
    sleep(100ms) 
    key(tab)
```

**Source:** `random_number.talon`

---

### 254. `enter)`

**Action:**
```
mode.disable("dictation") 
    mode.enable("command") 
    sleep(100ms) 
    key(enter)
```

**Source:** `dictation_mixed_modes.talon`

---

### 255. `fake email`

**Action:**
```
emailAddress = user.fake_email() 
    insert(emailAddress)
```

**Source:** `global_customisations.talon`

---

### 256. `test email`

**Action:**
```
insert("firstlastname@domain.co.uk")
```

**Source:** `global_customisations.talon`

---


## 🎮 Gaming


### 257. `[all] invade`

**Action:**
```
key(ctrl-.) 
    sleep(30ms) 
    key(a) 
    sleep(30ms) 
    mouse_click(0)
```

**Source:** `company_of_heroes_2.talon`

---

### 258. `[all] soldiers`

**Action:**
```
key(ctrl-.)
```

**Source:** `company_of_heroes_2.talon`

---

### 259. `[all] vehicles`

**Action:**
```
key(ctrl-/)
```

**Source:** `company_of_heroes_2.talon`

---

### 260. `[game] menu`

**Action:**
```
key(f10)
```

**Source:** `company_of_heroes_2.talon`

---

### 261. `[game] pause`

**Action:**
```
key(pause)
```

**Source:** `company_of_heroes_2.talon`

---

### 262. `[get] gammon [bomb]`

**Action:**
```
position_x = user.query_mouse_position_x() 
    position_y = user.query_mouse_position_y()
```

**Source:** `company_of_heroes_2.talon`

---

### 263. `[move] back`

**Action:**
```
key(s)
```

**Source:** `gates_of_hell.talon`

---

### 264. `[move] forward`

**Action:**
```
key(w)
```

**Source:** `gates_of_hell.talon`

---

### 265. `[move] left`

**Action:**
```
key(a)
```

**Source:** `gates_of_hell.talon`

---

### 266. `[move] right`

**Action:**
```
key(d)
```

**Source:** `gates_of_hell.talon`

---

### 267. `[next] idle [soldier]`

**Action:**
```
key(.)
```

**Source:** `company_of_heroes_2.talon`

---

### 268. `[next] idle vehicle`

**Action:**
```
key(alt-/)
```

**Source:** `company_of_heroes_2.talon`

---

### 269. `[set] rally point`

**Action:**
```
key(ctrl-a) 
    sleep(30ms) 
    mouse_click(0)
```

**Source:** `company_of_heroes_2.talon`

---

### 270. `[toggle] map`

**Action:**
```
key(keypad_0)
```

**Source:** `company_of_heroes_2.talon`

---

### 271. `[unit] eight view`

**Action:**
```
key(8) 
    key(8)
```

**Source:** `company_of_heroes_2.talon`

---

### 272. `[unit] five view`

**Action:**
```
key(5) 
    key(5)
```

**Source:** `company_of_heroes_2.talon`

---

### 273. `[unit] four view`

**Action:**
```
key(4) 
    key(4)
```

**Source:** `company_of_heroes_2.talon`

---

### 274. `[unit] nine view`

**Action:**
```
key(9) 
    key(9)
```

**Source:** `company_of_heroes_2.talon`

---

### 275. `[unit] one view`

**Action:**
```
key(1) 
    key(1)
```

**Source:** `company_of_heroes_2.talon`

---

### 276. `[unit] seven view`

**Action:**
```
key(7) 
    key(7)
```

**Source:** `company_of_heroes_2.talon`

---

### 277. `[unit] six view`

**Action:**
```
key(6) 
    key(6)
```

**Source:** `company_of_heroes_2.talon`

---

### 278. `[unit] three view`

**Action:**
```
key(3) 
    key(3)
```

**Source:** `company_of_heroes_2.talon`

---

### 279. `[unit] two view`

**Action:**
```
key(2) 
    key(2)
```

**Source:** `company_of_heroes_2.talon`

---

### 280. `[unit] zero view`

**Action:**
```
key(0) 
    key(0)
```

**Source:** `company_of_heroes_2.talon`

---

### 281. `abandoned vehicle`

**Action:**
```
key(l) 
    sleep(100ms) 
    key(l)
```

**Source:** `gates_of_hell.talon`

---

### 282. `aircraft move`

**Action:**
```
key(Q)
```

**Source:** `gates_of_hell.talon`

---

### 283. `ambush`

**Action:**
```
user.move_cursor_to_gaze_point() 
    sleep(50ms) 
    key(a) 
    sleep(50ms) 
    mouse_cli
```

**Source:** `company_of_heroes_2.talon`

---

### 284. `and app.exe`

**Action:**
```
train-win64-shipping.exe
```

**Source:** `last_train_home.talon`

---

### 285. `and app.exe`

**Action:**
```
sanctusreach.exe
```

**Source:** `sanctus_reach.talon`

---

### 286. `and app.name`

**Action:**
```
Train
```

**Source:** `last_train_home.talon`

---

### 287. `and app.name`

**Action:**
```
SanctusReach.EXE
```

**Source:** `sanctus_reach.talon`

---

### 288. `and app.name`

**Action:**
```
ThereCameanEcho.exe
```

**Source:** `there_came_an_echo.talon`

---

### 289. `ante run`

**Action:**
```
key(home) 
    sleep(30ms) 
    key(7) 
    sleep(30ms) 
    key(u) 
    sleep(30ms) 
    m
```

**Source:** `company_of_heroes_2.talon`

---

### 290. `antitank`

**Action:**
```
key(7)
```

**Source:** `company_of_heroes_2.talon`

---

### 291. `antitank`

**Action:**
```
key(f2)
```

**Source:** `gates_of_hell.talon`

---

### 292. `app.exe`

**Action:**
```
colobot.exe
```

**Source:** `colbot.talon`

---

### 293. `app.name`

**Action:**
```
Company of Heroes 2
```

**Source:** `company_of_heroes_2.talon`

---

### 294. `app.name`

**Action:**
```
Gates of Hell (x64)
```

**Source:** `gates_of_hell.talon`

---

### 295. `assembly`

**Action:**
```
key(b) 
    sleep(20ms) 
    key(d) 
    sleep(20ms) 
    mouse_click(0)
```

**Source:** `company_of_heroes_2.talon`

---

### 296. `assign squad eight`

**Action:**
```
key(shift-8)
```

**Source:** `gates_of_hell.talon`

---

### 297. `assign squad five`

**Action:**
```
key(shift-5)
```

**Source:** `gates_of_hell.talon`

---

### 298. `assign squad four`

**Action:**
```
key(shift-4)
```

**Source:** `gates_of_hell.talon`

---

### 299. `assign squad nine`

**Action:**
```
key(shift-9)
```

**Source:** `gates_of_hell.talon`

---

### 300. `assign squad one`

**Action:**
```
key(shift-1)
```

**Source:** `gates_of_hell.talon`

---

### 301. `assign squad seven`

**Action:**
```
key(shift-7)
```

**Source:** `gates_of_hell.talon`

---

### 302. `assign squad six`

**Action:**
```
key(shift-6)
```

**Source:** `gates_of_hell.talon`

---

### 303. `assign squad three`

**Action:**
```
key(shift-3)
```

**Source:** `gates_of_hell.talon`

---

### 304. `assign squad two`

**Action:**
```
key(shift-2)
```

**Source:** `gates_of_hell.talon`

---

### 305. `astronaut`

**Action:**
```
key(home)
```

**Source:** `colbot.talon`

---

### 306. `attach`

**Action:**
```
key(shift-g)
```

**Source:** `gates_of_hell.talon`

---

### 307. `attack`

**Action:**
```
key(f5)
```

**Source:** `gates_of_hell.talon`

---

### 308. `attack [move]`

**Action:**
```
key(a) 
    mouse_click(0)
```

**Source:** `company_of_heroes_2.talon`

---

### 309. `attack [move]`

**Action:**
```
key(a) 
    mouse_click(0)
```

**Source:** `gates_of_hell.talon`

---

### 310. `attack ground`

**Action:**
```
key(f6)
```

**Source:** `gates_of_hell.talon`

---

### 311. `attack there`

**Action:**
```
user.move_cursor_to_gaze_point() 
    sleep(50ms) 
    key(a) 
    sleep(50ms) 
    mouse_cli
```

**Source:** `company_of_heroes_2.talon`

---

### 312. `bofors`

**Action:**
```
key(b) 
    sleep(20ms) 
    key(b) 
    sleep(20ms) 
    mouse_click(0)
```

**Source:** `company_of_heroes_2.talon`

---

### 313. `camera [toggle]`

**Action:**
```
key(space)
```

**Source:** `colbot.talon`

---

### 314. `camera down`

**Action:**
```
key(s)
```

**Source:** `last_train_home.talon`

---

### 315. `camera down`

**Action:**
```
key(s)
```

**Source:** `sanctus_reach.talon`

---

### 316. `camera left`

**Action:**
```
key(a)
```

**Source:** `last_train_home.talon`

---

### 317. `camera left`

**Action:**
```
key(a)
```

**Source:** `sanctus_reach.talon`

---

### 318. `camera right`

**Action:**
```
key(d)
```

**Source:** `last_train_home.talon`

---

### 319. `camera right`

**Action:**
```
key(d)
```

**Source:** `sanctus_reach.talon`

---

### 320. `camera up`

**Action:**
```
key(w)
```

**Source:** `last_train_home.talon`

---

### 321. `camera up`

**Action:**
```
key(w)
```

**Source:** `sanctus_reach.talon`

---

### 322. `cancel`

**Action:**
```
key(f)
```

**Source:** `gates_of_hell.talon`

---

### 323. `capture video`

**Action:**
```
key(f11)
```

**Source:** `gates_of_hell.talon`

---

### 324. `centre`

**Action:**
```
mouse_move(800, 500)
```

**Source:** `company_of_heroes_2.talon`

---

### 325. `centre`

**Action:**
```
mouse_move(800, 500)
```

**Source:** `last_train_home.talon`

---

### 326. `centre`

**Action:**
```
mouse_move(800, 500)
```

**Source:** `sanctus_reach.talon`

---

### 327. `centre`

**Action:**
```
mouse_move(800, 500)
```

**Source:** `there_came_an_echo.talon`

---

### 328. `centre camera`

**Action:**
```
key(shift-f)
```

**Source:** `gates_of_hell.talon`

---

### 329. `continue`

**Action:**
```
mouse_move(1835, 40) 
    sleep(100ms) 
    mouse_click(0)
```

**Source:** `gates_of_hell.talon`

---

### 330. `create group`

**Action:**
```
mouse_move(713, 1017) 
    sleep(100ms) 
    mouse_click(0)
```

**Source:** `last_train_home.talon`

---

### 331. `crouch`

**Action:**
```
key(lalt)
```

**Source:** `gates_of_hell.talon`

---

### 332. `deal`

**Action:**
```
key(d)
```

**Source:** `solitaire_and_casual_games.talon`

---

### 333. `deck(pedal_left)`

**Action:**
```
mouse_drag(0)
```

**Source:** `last_train_home.talon`

---

### 334. `deck(pedal_middle)`

**Action:**
```
speech.toggle()
```

**Source:** `last_train_home.talon`

---

### 335. `deck(pedal_right)`

**Action:**
```
mouse_click(0)
```

**Source:** `last_train_home.talon`

---

### 336. `direct control`

**Action:**
```
key(e)
```

**Source:** `gates_of_hell.talon`

---

### 337. `drop item`

**Action:**
```
key(b)
```

**Source:** `gates_of_hell.talon`

---

### 338. `east`

**Action:**
```
key(right)
```

**Source:** `company_of_heroes_2.talon`

---

### 339. `eight attack`

**Action:**
```
key(8) 
    sleep(30ms) 
    key(a) 
    sleep(30ms) 
    mouse_click(0)
```

**Source:** `company_of_heroes_2.talon`

---

### 340. `eight back`

**Action:**
```
key(8) 
    sleep(30ms) 
    key(u) 
    sleep(30ms) 
    mouse_click(0)
```

**Source:** `company_of_heroes_2.talon`

---

### 341. `eight o'clock`

**Action:**
```
user.mouse_drag(1) 
    sleep(100ms) 
    position_x = user.query_mouse_position_x() 
    posi
```

**Source:** `company_of_heroes_2.talon`

---

### 342. `eleven o'clock`

**Action:**
```
user.mouse_drag(1) 
    sleep(100ms) 
    position_x = user.query_mouse_position_x() 
    posi
```

**Source:** `company_of_heroes_2.talon`

---

### 343. `emplacement eighth`

**Action:**
```
position_x = user.query_mouse_position_x() 
    position_y = user.query_mouse_position_y()
```

**Source:** `company_of_heroes_2.talon`

---

### 344. `emplacement fifth`

**Action:**
```
position_x = user.query_mouse_position_x() 
    position_y = user.query_mouse_position_y()
```

**Source:** `company_of_heroes_2.talon`

---

### 345. `emplacement first`

**Action:**
```
position_x = user.query_mouse_position_x() 
    position_y = user.query_mouse_position_y()
```

**Source:** `company_of_heroes_2.talon`

---

### 346. `emplacement fourth`

**Action:**
```
position_x = user.query_mouse_position_x() 
    position_y = user.query_mouse_position_y()
```

**Source:** `company_of_heroes_2.talon`

---

### 347. `emplacement ninth`

**Action:**
```
position_x = user.query_mouse_position_x() 
    position_y = user.query_mouse_position_y()
```

**Source:** `company_of_heroes_2.talon`

---

### 348. `emplacement second`

**Action:**
```
position_x = user.query_mouse_position_x() 
    position_y = user.query_mouse_position_y()
```

**Source:** `company_of_heroes_2.talon`

---

### 349. `emplacement seventh`

**Action:**
```
position_x = user.query_mouse_position_x() 
    position_y = user.query_mouse_position_y()
```

**Source:** `company_of_heroes_2.talon`

---

### 350. `emplacement sixth`

**Action:**
```
position_x = user.query_mouse_position_x() 
    position_y = user.query_mouse_position_y()
```

**Source:** `company_of_heroes_2.talon`

---

### 351. `emplacement third`

**Action:**
```
position_x = user.query_mouse_position_x() 
    position_y = user.query_mouse_position_y()
```

**Source:** `company_of_heroes_2.talon`

---

### 352. `examine`

**Action:**
```
key(x)
```

**Source:** `gates_of_hell.talon`

---

### 353. `exit [mission]`

**Action:**
```
key(escape)
```

**Source:** `colbot.talon`

---

### 354. `explode`

**Action:**
```
key(ctrl-/) 
    sleep(30ms) 
    key(a) 
    sleep(30ms) 
    mouse_click(0)
```

**Source:** `company_of_heroes_2.talon`

---

### 355. `fast [speed]`

**Action:**
```
key(f8)
```

**Source:** `colbot.talon`

---

### 356. `five attack`

**Action:**
```
key(5) 
    sleep(30ms) 
    key(a) 
    sleep(30ms) 
    mouse_click(0)
```

**Source:** `company_of_heroes_2.talon`

---

### 357. `five back`

**Action:**
```
key(5) 
    sleep(30ms) 
    key(u) 
    sleep(30ms) 
    mouse_click(0)
```

**Source:** `company_of_heroes_2.talon`

---

### 358. `five o'clock`

**Action:**
```
user.mouse_drag(1) 
    sleep(100ms) 
    position_x = user.query_mouse_position_x() 
    posi
```

**Source:** `company_of_heroes_2.talon`

---

### 359. `four attack`

**Action:**
```
key(4) 
    sleep(30ms) 
    key(a) 
    sleep(30ms) 
    mouse_click(0)
```

**Source:** `company_of_heroes_2.talon`

---

### 360. `four back`

**Action:**
```
key(4) 
    sleep(30ms) 
    key(u) 
    sleep(30ms) 
    mouse_click(0)
```

**Source:** `company_of_heroes_2.talon`

---

### 361. `four o'clock`

**Action:**
```
user.mouse_drag(1) 
    sleep(100ms) 
    position_x = user.query_mouse_position_x() 
    posi
```

**Source:** `company_of_heroes_2.talon`

---

### 362. `fuel`

**Action:**
```
key(b) 
    sleep(20ms) 
    key(f) 
    sleep(20ms) 
    mouse_click(0)
```

**Source:** `company_of_heroes_2.talon`

---

### 363. `function take eight`

**Action:**
```
key(f8)
```

**Source:** `gates_of_hell.talon`

---

### 364. `function take eleven`

**Action:**
```
key(f11)
```

**Source:** `gates_of_hell.talon`

---

### 365. `function take five`

**Action:**
```
key(f5)
```

**Source:** `gates_of_hell.talon`

---

### 366. `function take four`

**Action:**
```
key(f4)
```

**Source:** `gates_of_hell.talon`

---

### 367. `function take nine`

**Action:**
```
key(f9)
```

**Source:** `gates_of_hell.talon`

---

### 368. `function take one`

**Action:**
```
key(f1)
```

**Source:** `gates_of_hell.talon`

---

### 369. `function take seven`

**Action:**
```
key(f7)
```

**Source:** `gates_of_hell.talon`

---

### 370. `function take six`

**Action:**
```
key(f6)
```

**Source:** `gates_of_hell.talon`

---

### 371. `function take ten`

**Action:**
```
key(f10)
```

**Source:** `gates_of_hell.talon`

---

### 372. `function take three`

**Action:**
```
key(f3)
```

**Source:** `gates_of_hell.talon`

---

### 373. `function take twelve`

**Action:**
```
key(f12)
```

**Source:** `gates_of_hell.talon`

---

### 374. `function take two`

**Action:**
```
key(f2)
```

**Source:** `gates_of_hell.talon`

---

### 375. `game <user.arrow_key>`

**Action:**
```
key(arrow_key) 
    repeat(4)
```

**Source:** `colbot.talon`

---

### 376. `game <user.arrow_key>`

**Action:**
```
key(arrow_key) 
    repeat(4)
```

**Source:** `company_of_heroes_2.talon`

---

### 377. `game <user.arrow_key>`

**Action:**
```
key(arrow_key) 
    repeat(4)
```

**Source:** `last_train_home.talon`

---

### 378. `game <user.arrow_key>`

**Action:**
```
key(arrow_key) 
    repeat(4)
```

**Source:** `sanctus_reach.talon`

---

### 379. `game <user.arrow_key>`

**Action:**
```
key(arrow_key) 
    repeat(4)
```

**Source:** `there_came_an_echo.talon`

---

### 380. `game down`

**Action:**
```
key(s) 
    repeat(10)
```

**Source:** `gates_of_hell.talon`

---

### 381. `game left`

**Action:**
```
key(a) 
    repeat(10)
```

**Source:** `gates_of_hell.talon`

---

### 382. `game pause`

**Action:**
```
key(pause)
```

**Source:** `gates_of_hell.talon`

---

### 383. `game right`

**Action:**
```
key(d) 
    repeat(10)
```

**Source:** `gates_of_hell.talon`

---

### 384. `game speed`

**Action:**
```
key(backspace)
```

**Source:** `gates_of_hell.talon`

---

### 385. `game stop`

**Action:**
```
key(pause)
```

**Source:** `company_of_heroes_2.talon`

---

### 386. `game up`

**Action:**
```
key(w) 
    repeat(10)
```

**Source:** `gates_of_hell.talon`

---

### 387. `get stuff`

**Action:**
```
mouse_move(380, 855) 
    sleep(30ms) 
    mouse_click(0)
```

**Source:** `company_of_heroes_2.talon`

---

### 388. `global chat`

**Action:**
```
key(shift-z)
```

**Source:** `gates_of_hell.talon`

---

### 389. `go there`

**Action:**
```
mouse_click(0) 
    sleep(60ms) 
    key(keypad_0)
```

**Source:** `company_of_heroes_2.talon`

---

### 390. `grenade`

**Action:**
```
key(f1)
```

**Source:** `gates_of_hell.talon`

---

### 391. `group eight`

**Action:**
```
key(shift-8) 
    key(ctrl-8)
```

**Source:** `company_of_heroes_2.talon`

---

### 392. `group five`

**Action:**
```
key(shift-5) 
    key(ctrl-5)
```

**Source:** `company_of_heroes_2.talon`

---

### 393. `group four`

**Action:**
```
key(shift-4) 
    key(ctrl-4)
```

**Source:** `company_of_heroes_2.talon`

---

### 394. `group nine`

**Action:**
```
key(shift-9) 
    key(ctrl-9)
```

**Source:** `company_of_heroes_2.talon`

---

### 395. `group one`

**Action:**
```
key(shift-1) 
    key(ctrl-1)
```

**Source:** `company_of_heroes_2.talon`

---

### 396. `group seven`

**Action:**
```
key(shift-7) 
    key(ctrl-7)
```

**Source:** `company_of_heroes_2.talon`

---

### 397. `group six`

**Action:**
```
key(shift-6) 
    key(ctrl-6)
```

**Source:** `company_of_heroes_2.talon`

---

### 398. `group three`

**Action:**
```
key(shift-3) 
    key(ctrl-3)
```

**Source:** `company_of_heroes_2.talon`

---

### 399. `group two`

**Action:**
```
key(shift-2) 
    key(ctrl-2)
```

**Source:** `company_of_heroes_2.talon`

---

### 400. `group zero`

**Action:**
```
key(shift-0) 
    key(ctrl-0)
```

**Source:** `company_of_heroes_2.talon`

---

### 401. `headquarters`

**Action:**
```
key(f1)
```

**Source:** `company_of_heroes_2.talon`

---

### 402. `heal`

**Action:**
```
key(f8)
```

**Source:** `gates_of_hell.talon`

---

### 403. `heavy [vehicles]`

**Action:**
```
key(f5)
```

**Source:** `company_of_heroes_2.talon`

---

### 404. `heel`

**Action:**
```
key(f8)
```

**Source:** `gates_of_hell.talon`

---

### 405. `highlight corpses`

**Action:**
```
key(v)
```

**Source:** `gates_of_hell.talon`

---

### 406. `highlight items`

**Action:**
```
key(c)
```

**Source:** `gates_of_hell.talon`

---

### 407. `hold shift`

**Action:**
```
key(shift:down)
```

**Source:** `company_of_heroes_2.talon`

---

### 408. `idle`

**Action:**
```
key(alt-.)
```

**Source:** `company_of_heroes_2.talon`

---

### 409. `infantry`

**Action:**
```
key(f2)
```

**Source:** `company_of_heroes_2.talon`

---

### 410. `inventory`

**Action:**
```
key(i)
```

**Source:** `gates_of_hell.talon`

---

### 411. `kill tank`

**Action:**
```
key(7) 
    sleep(30ms) 
    key(a) 
    sleep(30ms) 
    mouse_click(0)
```

**Source:** `company_of_heroes_2.talon`

---

### 412. `lay down`

**Action:**
```
key(lctrl)
```

**Source:** `gates_of_hell.talon`

---

### 413. `lazy`

**Action:**
```
key(alt-/)
```

**Source:** `company_of_heroes_2.talon`

---

### 414. `left card`

**Action:**
```
mouse_move(813, 793) 
    sleep(30ms) 
    mouse_click(0)
```

**Source:** `solitaire_and_casual_games.talon`

---

### 415. `light [vehicles]`

**Action:**
```
key(f4)
```

**Source:** `company_of_heroes_2.talon`

---

### 416. `load [game]`

**Action:**
```
key(f9)
```

**Source:** `colbot.talon`

---

### 417. `look`

**Action:**
```
key(r)
```

**Source:** `gates_of_hell.talon`

---

### 418. `main action`

**Action:**
```
key(e)
```

**Source:** `colbot.talon`

---

### 419. `map`

**Action:**
```
key(m)
```

**Source:** `gates_of_hell.talon`

---

### 420. `melee`

**Action:**
```
key(f7)
```

**Source:** `gates_of_hell.talon`

---

### 421. `menu`

**Action:**
```
key(esc)
```

**Source:** `gates_of_hell.talon`

---

### 422. `message history`

**Action:**
```
key(h)
```

**Source:** `gates_of_hell.talon`

---

### 423. `minimap`

**Action:**
```
key(ctrl-m)
```

**Source:** `gates_of_hell.talon`

---

### 424. `mission [instructions]`

**Action:**
```
key(f1)
```

**Source:** `colbot.talon`

---

### 425. `mortars`

**Action:**
```
key(b) 
    sleep(20ms) 
    key(r) 
    sleep(20ms) 
    mouse_click(0)
```

**Source:** `company_of_heroes_2.talon`

---

### 426. `move back`

**Action:**
```
key(down)
```

**Source:** `colbot.talon`

---

### 427. `move back`

**Action:**
```
key(down)
```

**Source:** `company_of_heroes_2.talon`

---

### 428. `move forward`

**Action:**
```
key(up)
```

**Source:** `colbot.talon`

---

### 429. `move forward`

**Action:**
```
key(up)
```

**Source:** `company_of_heroes_2.talon`

---

### 430. `munition`

**Action:**
```
key(b) 
    sleep(20ms) 
    key(m) 
    sleep(20ms) 
    mouse_click(0)
```

**Source:** `company_of_heroes_2.talon`

---

### 431. `mute microphone`

**Action:**
```
key(ctrl-u)
```

**Source:** `gates_of_hell.talon`

---

### 432. `next`

**Action:**
```
key(shift:down) 
    sleep(30ms) 
    mouse_click(0) 
    sleep(30ms) 
    key(shift:up)
```

**Source:** `company_of_heroes_2.talon`

---

### 433. `nine attack`

**Action:**
```
key(9) 
    sleep(30ms) 
    key(a) 
    sleep(30ms) 
    mouse_click(0)
```

**Source:** `company_of_heroes_2.talon`

---

### 434. `nine back`

**Action:**
```
key(9) 
    sleep(30ms) 
    key(u) 
    sleep(30ms) 
    mouse_click(0)
```

**Source:** `company_of_heroes_2.talon`

---

### 435. `nine o'clock`

**Action:**
```
user.mouse_drag(1) 
    sleep(100ms) 
    position_x = user.query_mouse_position_x() 
    posi
```

**Source:** `company_of_heroes_2.talon`

---

### 436. `normal [speed]`

**Action:**
```
key(f7)
```

**Source:** `colbot.talon`

---

### 437. `north`

**Action:**
```
key(up)
```

**Source:** `company_of_heroes_2.talon`

---

### 438. `objectives`

**Action:**
```
key(o)
```

**Source:** `gates_of_hell.talon`

---

### 439. `one attack`

**Action:**
```
key(1) 
    sleep(30ms) 
    key(a) 
    sleep(30ms) 
    mouse_click(0)
```

**Source:** `company_of_heroes_2.talon`

---

### 440. `one back`

**Action:**
```
key(1) 
    sleep(30ms) 
    key(u) 
    sleep(30ms) 
    mouse_click(0)
```

**Source:** `company_of_heroes_2.talon`

---

### 441. `one o'clock`

**Action:**
```
user.mouse_drag(1) 
    sleep(100ms) 
    position_x = user.query_mouse_position_x() 
    posi
```

**Source:** `company_of_heroes_2.talon`

---

### 442. `order squad`

**Action:**
```
mouse_click(3)
```

**Source:** `gates_of_hell.talon`

---

### 443. `os`

**Action:**
```
windows
```

**Source:** `last_train_home.talon`

---

### 444. `os`

**Action:**
```
windows
```

**Source:** `last_train_home.talon`

---

### 445. `os`

**Action:**
```
windows
```

**Source:** `sanctus_reach.talon`

---

### 446. `os`

**Action:**
```
windows
```

**Source:** `sanctus_reach.talon`

---

### 447. `os`

**Action:**
```
windows
```

**Source:** `there_came_an_echo.talon`

---

### 448. `pause [game]`

**Action:**
```
key(keypad_decimal)
```

**Source:** `colbot.talon`

---

### 449. `pause game`

**Action:**
```
key(pause)
```

**Source:** `company_of_heroes_2.talon`

---

### 450. `pitch down`

**Action:**
```
key(')
```

**Source:** `gates_of_hell.talon`

---

### 451. `pitch up`

**Action:**
```
key(;)
```

**Source:** `gates_of_hell.talon`

---

### 452. `previous`

**Action:**
```
key(keypad_0)
```

**Source:** `colbot.talon`

---

### 453. `programming [help]`

**Action:**
```
key(f2)
```

**Source:** `colbot.talon`

---

### 454. `push to take`

**Action:**
```
key(u)
```

**Source:** `gates_of_hell.talon`

---

### 455. `queue`

**Action:**
```
key(shift:down) 
    sleep(30ms) 
    mouse_click(1) 
    sleep(30ms) 
    key(shift:up)
```

**Source:** `company_of_heroes_2.talon`

---

### 456. `quick aim`

**Action:**
```
mouse_click(1)
```

**Source:** `gates_of_hell.talon`

---

### 457. `reinforce`

**Action:**
```
key(r:10)
```

**Source:** `company_of_heroes_2.talon`

---

### 458. `reinforce first`

**Action:**
```
mouse_move(1820, 505) 
    sleep(100ms) 
    mouse_click(0)
```

**Source:** `gates_of_hell.talon`

---

### 459. `release shift`

**Action:**
```
key(shift:up)
```

**Source:** `company_of_heroes_2.talon`

---

### 460. `reload`

**Action:**
```
key(y)
```

**Source:** `gates_of_hell.talon`

---

### 461. `repair`

**Action:**
```
key(shift-r)
```

**Source:** `gates_of_hell.talon`

---

### 462. `reset camera`

**Action:**
```
key(backspace)
```

**Source:** `company_of_heroes_2.talon`

---

### 463. `reset camera`

**Action:**
```
key(ctrl-alt-o)
```

**Source:** `last_train_home.talon`

---

### 464. `reset zoom`

**Action:**
```
key(ctrl-alt-z)
```

**Source:** `last_train_home.talon`

---

### 465. `retreat`

**Action:**
```
key(u) 
    sleep(30ms) 
    mouse_click(0)
```

**Source:** `company_of_heroes_2.talon`

---

### 466. `reverse`

**Action:**
```
key(u) 
    sleep(30ms) 
    mouse_click(0)
```

**Source:** `company_of_heroes_2.talon`

---

### 467. `right card`

**Action:**
```
mouse_move(1102, 800) 
    sleep(30ms) 
    mouse_click(0)
```

**Source:** `solitaire_and_casual_games.talon`

---

### 468. `rocket`

**Action:**
```
key(f4)
```

**Source:** `gates_of_hell.talon`

---

### 469. `rotate left`

**Action:**
```
key(alt:down) 
    position_x = user.query_mouse_position_x() 
    position_y = user.query_mous
```

**Source:** `company_of_heroes_2.talon`

---

### 470. `rotate left`

**Action:**
```
key(,)
```

**Source:** `gates_of_hell.talon`

---

### 471. `rotate left`

**Action:**
```
key(e)
```

**Source:** `last_train_home.talon`

---

### 472. `rotate right`

**Action:**
```
key(alt:down) 
    position_x = user.query_mouse_position_x() 
    position_y = user.query_mous
```

**Source:** `company_of_heroes_2.talon`

---

### 473. `rotate right`

**Action:**
```
key(q)
```

**Source:** `last_train_home.talon`

---

### 474. `rotate small`

**Action:**
```
key(alt:down) 
    position_x = user.query_mouse_position_x() 
    position_y = user.query_mous
```

**Source:** `company_of_heroes_2.talon`

---

### 475. `rotate write`

**Action:**
```
key(.)
```

**Source:** `gates_of_hell.talon`

---

### 476. `save [game]`

**Action:**
```
key(f5)
```

**Source:** `colbot.talon`

---

### 477. `save game`

**Action:**
```
key(f5)
```

**Source:** `last_train_home.talon`

---

### 478. `score table`

**Action:**
```
key(tab)
```

**Source:** `gates_of_hell.talon`

---

### 479. `separate squad`

**Action:**
```
key(k)
```

**Source:** `gates_of_hell.talon`

---

### 480. `settings()`

**Action:**
```
user.mode_indicator_show = 0 
    # Choose how pop click should work in 'control mouse' mode
```

**Source:** `colbot.talon`

---

### 481. `settings()`

**Action:**
```
user.mode_indicator_show = 0 
    # Choose how pop click should work in 'control mouse' mode
```

**Source:** `company_of_heroes_2.talon`

---

### 482. `settings()`

**Action:**
```
user.mode_indicator_show = 0 
    # Choose how pop click should work in 'control mouse' mode
```

**Source:** `gates_of_hell.talon`

---

### 483. `settings()`

**Action:**
```
user.mode_indicator_show = 0 
    user.mouse_enable_pop_click = 0 
    key_hold = 50
```

**Source:** `last_train_home.talon`

---

### 484. `settings()`

**Action:**
```
user.mode_indicator_show = 0 
    user.mouse_enable_pop_click = 0 
    key_hold = 50
```

**Source:** `sanctus_reach.talon`

---

### 485. `settings()`

**Action:**
```
user.mode_indicator_show = 0 
    user.mouse_enable_pop_click = 0 
    key_hold = 50
```

**Source:** `there_came_an_echo.talon`

---

### 486. `seven attack`

**Action:**
```
key(7) 
    sleep(30ms) 
    key(a) 
    sleep(30ms) 
    mouse_click(0)
```

**Source:** `company_of_heroes_2.talon`

---

### 487. `seven back`

**Action:**
```
key(7) 
    sleep(30ms) 
    key(u) 
    sleep(30ms) 
    mouse_click(0)
```

**Source:** `company_of_heroes_2.talon`

---

### 488. `seven o'clock`

**Action:**
```
user.mouse_drag(1) 
    sleep(100ms) 
    position_x = user.query_mouse_position_x() 
    posi
```

**Source:** `company_of_heroes_2.talon`

---

### 489. `six attack`

**Action:**
```
key(6) 
    sleep(30ms) 
    key(a) 
    sleep(30ms) 
    mouse_click(0)
```

**Source:** `company_of_heroes_2.talon`

---

### 490. `six back`

**Action:**
```
key(6) 
    sleep(30ms) 
    key(u) 
    sleep(30ms) 
    mouse_click(0)
```

**Source:** `company_of_heroes_2.talon`

---

### 491. `six o'clock`

**Action:**
```
user.mouse_drag(1) 
    sleep(100ms) 
    position_x = user.query_mouse_position_x() 
    posi
```

**Source:** `company_of_heroes_2.talon`

---

### 492. `slot fifth`

**Action:**
```
position_x = user.query_mouse_position_x() 
    position_y = user.query_mouse_position_y()
```

**Source:** `company_of_heroes_2.talon`

---

### 493. `slot first`

**Action:**
```
position_x = user.query_mouse_position_x() 
    position_y = user.query_mouse_position_y()
```

**Source:** `company_of_heroes_2.talon`

---

### 494. `slot fourth`

**Action:**
```
position_x = user.query_mouse_position_x() 
    position_y = user.query_mouse_position_y()
```

**Source:** `company_of_heroes_2.talon`

---

### 495. `slot second`

**Action:**
```
position_x = user.query_mouse_position_x() 
    position_y = user.query_mouse_position_y()
```

**Source:** `company_of_heroes_2.talon`

---

### 496. `slot third`

**Action:**
```
position_x = user.query_mouse_position_x() 
    position_y = user.query_mouse_position_y()
```

**Source:** `company_of_heroes_2.talon`

---

### 497. `slowdown`

**Action:**
```
key(f6)
```

**Source:** `colbot.talon`

---

### 498. `smoke`

**Action:**
```
key(f3)
```

**Source:** `gates_of_hell.talon`

---

### 499. `south`

**Action:**
```
key(down)
```

**Source:** `company_of_heroes_2.talon`

---

### 500. `sprint`

**Action:**
```
key(lshift)
```

**Source:** `gates_of_hell.talon`

---

### 501. `stop`

**Action:**
```
key(s)
```

**Source:** `company_of_heroes_2.talon`

---

### 502. `support`

**Action:**
```
key(f3)
```

**Source:** `company_of_heroes_2.talon`

---

### 503. `tag()`

**Action:**
```
user.talon_hud_automatic_hide
```

**Source:** `company_of_heroes_2.talon`

---

### 504. `take [all]`

**Action:**
```
mouse_move(60, 40) 
    sleep(30ms) 
    user.mouse_drag(0) 
    sleep(30ms) 
    mouse_move(
```

**Source:** `company_of_heroes_2.talon`

---

### 505. `take [all]`

**Action:**
```
mouse_move(10, 10) 
    sleep(30ms) 
    user.mouse_drag(0) 
    sleep(30ms) 
    mouse_move(
```

**Source:** `gates_of_hell.talon`

---

### 506. `take eight`

**Action:**
```
key(8)
```

**Source:** `gates_of_hell.talon`

---

### 507. `take five`

**Action:**
```
key(5)
```

**Source:** `gates_of_hell.talon`

---

### 508. `take four`

**Action:**
```
key(4)
```

**Source:** `gates_of_hell.talon`

---

### 509. `take nine`

**Action:**
```
key(9)
```

**Source:** `gates_of_hell.talon`

---

### 510. `take one`

**Action:**
```
key(1)
```

**Source:** `gates_of_hell.talon`

---

### 511. `take seven`

**Action:**
```
key(7)
```

**Source:** `gates_of_hell.talon`

---

### 512. `take six`

**Action:**
```
key(6)
```

**Source:** `gates_of_hell.talon`

---

### 513. `take three`

**Action:**
```
key(3)
```

**Source:** `gates_of_hell.talon`

---

### 514. `take two`

**Action:**
```
key(2)
```

**Source:** `gates_of_hell.talon`

---

### 515. `takeoff`

**Action:**
```
key(shift)
```

**Source:** `colbot.talon`

---

### 516. `team chat`

**Action:**
```
key(z)
```

**Source:** `gates_of_hell.talon`

---

### 517. `team marker`

**Action:**
```
key(n)
```

**Source:** `gates_of_hell.talon`

---

### 518. `ten o'clock`

**Action:**
```
user.mouse_drag(1) 
    sleep(100ms) 
    position_x = user.query_mouse_position_x() 
    posi
```

**Source:** `company_of_heroes_2.talon`

---

### 519. `three attack`

**Action:**
```
key(3) 
    sleep(30ms) 
    key(a) 
    sleep(30ms) 
    mouse_click(0)
```

**Source:** `company_of_heroes_2.talon`

---

### 520. `three back`

**Action:**
```
key(3) 
    sleep(30ms) 
    key(u) 
    sleep(30ms) 
    mouse_click(0)
```

**Source:** `company_of_heroes_2.talon`

---

### 521. `three o'clock`

**Action:**
```
sleep(100ms) 
    user.mouse_drag(1) 
    sleep(100ms) 
    position_x = user.query_mouse_posi
```

**Source:** `company_of_heroes_2.talon`

---

### 522. `Toggle stance`

**Action:**
```
key(lctrl)
```

**Source:** `gates_of_hell.talon`

---

### 523. `Toggle throw weapon`

**Action:**
```
key(/)
```

**Source:** `gates_of_hell.talon`

---

### 524. `Toggle weapon`

**Action:**
```
key(/)
```

**Source:** `gates_of_hell.talon`

---

### 525. `touch eighth`

**Action:**
```
position_x = user.query_mouse_position_x() 
    position_y = user.query_mouse_position_y()
```

**Source:** `company_of_heroes_2.talon`

---

### 526. `touch fifth`

**Action:**
```
position_x = user.query_mouse_position_x() 
    position_y = user.query_mouse_position_y()
```

**Source:** `company_of_heroes_2.talon`

---

### 527. `touch first`

**Action:**
```
position_x = user.query_mouse_position_x() 
    position_y = user.query_mouse_position_y()
```

**Source:** `company_of_heroes_2.talon`

---

### 528. `touch fourth`

**Action:**
```
position_x = user.query_mouse_position_x() 
    position_y = user.query_mouse_position_y()
```

**Source:** `company_of_heroes_2.talon`

---

### 529. `touch ninth`

**Action:**
```
position_x = user.query_mouse_position_x() 
    position_y = user.query_mouse_position_y()
```

**Source:** `company_of_heroes_2.talon`

---

### 530. `touch second`

**Action:**
```
position_x = user.query_mouse_position_x() 
    position_y = user.query_mouse_position_y()
```

**Source:** `company_of_heroes_2.talon`

---

### 531. `touch seventh`

**Action:**
```
position_x = user.query_mouse_position_x() 
    position_y = user.query_mouse_position_y()
```

**Source:** `company_of_heroes_2.talon`

---

### 532. `touch sixth`

**Action:**
```
position_x = user.query_mouse_position_x() 
    position_y = user.query_mouse_position_y()
```

**Source:** `company_of_heroes_2.talon`

---

### 533. `touch third`

**Action:**
```
position_x = user.query_mouse_position_x() 
    position_y = user.query_mouse_position_y()
```

**Source:** `company_of_heroes_2.talon`

---

### 534. `trench`

**Action:**
```
key(b) 
    sleep(20ms) 
    key(t) 
    sleep(20ms) 
    mouse_click(0)
```

**Source:** `company_of_heroes_2.talon`

---

### 535. `twelve o'clock`

**Action:**
```
user.mouse_drag(1) 
    sleep(100ms) 
    position_x = user.query_mouse_position_x() 
    posi
```

**Source:** `company_of_heroes_2.talon`

---

### 536. `twelve o'clock`

**Action:**
```
sleep(100ms) 
    user.mouse_drag(1) 
    sleep(100ms) 
    position_x = user.query_mouse_posi
```

**Source:** `gates_of_hell.talon`

---

### 537. `two attack`

**Action:**
```
key(2) 
    sleep(30ms) 
    key(a) 
    sleep(30ms) 
    mouse_click(0)
```

**Source:** `company_of_heroes_2.talon`

---

### 538. `two back`

**Action:**
```
key(2) 
    sleep(30ms) 
    key(u) 
    sleep(30ms) 
    mouse_click(0)
```

**Source:** `company_of_heroes_2.talon`

---

### 539. `two o'clock`

**Action:**
```
user.mouse_drag(1) 
    sleep(100ms) 
    position_x = user.query_mouse_position_x() 
    posi
```

**Source:** `company_of_heroes_2.talon`

---

### 540. `unit eight`

**Action:**
```
key(8)
```

**Source:** `company_of_heroes_2.talon`

---

### 541. `unit five`

**Action:**
```
key(5)
```

**Source:** `company_of_heroes_2.talon`

---

### 542. `unit five`

**Action:**
```
mouse_move(1140, 965) 
    sleep(100ms) 
    mouse_click(0)
```

**Source:** `last_train_home.talon`

---

### 543. `unit four`

**Action:**
```
key(4)
```

**Source:** `company_of_heroes_2.talon`

---

### 544. `unit four`

**Action:**
```
mouse_move(1050, 965) 
    sleep(100ms) 
    mouse_click(0)
```

**Source:** `last_train_home.talon`

---

### 545. `unit nine`

**Action:**
```
key(9)
```

**Source:** `company_of_heroes_2.talon`

---

### 546. `unit one`

**Action:**
```
key(1)
```

**Source:** `company_of_heroes_2.talon`

---

### 547. `unit one`

**Action:**
```
mouse_move(780, 965) 
    sleep(100ms) 
    mouse_click(0)
```

**Source:** `last_train_home.talon`

---

### 548. `unit seven`

**Action:**
```
key(7)
```

**Source:** `company_of_heroes_2.talon`

---

### 549. `unit six`

**Action:**
```
key(6)
```

**Source:** `company_of_heroes_2.talon`

---

### 550. `unit three`

**Action:**
```
key(3)
```

**Source:** `company_of_heroes_2.talon`

---

### 551. `unit three`

**Action:**
```
mouse_move(960, 965) 
    sleep(100ms) 
    mouse_click(0)
```

**Source:** `last_train_home.talon`

---

### 552. `unit two`

**Action:**
```
key(2)
```

**Source:** `company_of_heroes_2.talon`

---

### 553. `unit two`

**Action:**
```
mouse_move(870, 965) 
    sleep(100ms) 
    mouse_click(0)
```

**Source:** `last_train_home.talon`

---

### 554. `unit zero`

**Action:**
```
key(0)
```

**Source:** `company_of_heroes_2.talon`

---

### 555. `units`

**Action:**
```
mouse_move(1207, 1017) 
    sleep(100ms) 
    mouse_click(0)
```

**Source:** `last_train_home.talon`

---

### 556. `unload`

**Action:**
```
key(g)
```

**Source:** `gates_of_hell.talon`

---

### 557. `vehicle fifth`

**Action:**
```
position_x = user.query_mouse_position_x() 
    position_y = user.query_mouse_position_y()
```

**Source:** `company_of_heroes_2.talon`

---

### 558. `vehicle first`

**Action:**
```
position_x = user.query_mouse_position_x() 
    position_y = user.query_mouse_position_y()
```

**Source:** `company_of_heroes_2.talon`

---

### 559. `vehicle fourth`

**Action:**
```
position_x = user.query_mouse_position_x() 
    position_y = user.query_mouse_position_y()
```

**Source:** `company_of_heroes_2.talon`

---

### 560. `vehicle second`

**Action:**
```
position_x = user.query_mouse_position_x() 
    position_y = user.query_mouse_position_y()
```

**Source:** `company_of_heroes_2.talon`

---

### 561. `vehicle seventh`

**Action:**
```
position_x = user.query_mouse_position_x() 
    position_y = user.query_mouse_position_y()
```

**Source:** `company_of_heroes_2.talon`

---

### 562. `vehicle sixth`

**Action:**
```
position_x = user.query_mouse_position_x() 
    position_y = user.query_mouse_position_y()
```

**Source:** `company_of_heroes_2.talon`

---

### 563. `vehicle third`

**Action:**
```
position_x = user.query_mouse_position_x() 
    position_y = user.query_mouse_position_y()
```

**Source:** `company_of_heroes_2.talon`

---

### 564. `wall`

**Action:**
```
key(b) 
    sleep(20ms) 
    key(w) 
    sleep(20ms) 
    mouse_click(0)
```

**Source:** `company_of_heroes_2.talon`

---

### 565. `weapon eight`

**Action:**
```
key(8)
```

**Source:** `gates_of_hell.talon`

---

### 566. `weapon five`

**Action:**
```
key(5)
```

**Source:** `gates_of_hell.talon`

---

### 567. `weapon four`

**Action:**
```
key(4)
```

**Source:** `gates_of_hell.talon`

---

### 568. `weapon one`

**Action:**
```
key(1)
```

**Source:** `gates_of_hell.talon`

---

### 569. `weapon seven`

**Action:**
```
key(7)
```

**Source:** `gates_of_hell.talon`

---

### 570. `weapon six`

**Action:**
```
key(6)
```

**Source:** `gates_of_hell.talon`

---

### 571. `weapon three`

**Action:**
```
key(3)
```

**Source:** `gates_of_hell.talon`

---

### 572. `weapon two`

**Action:**
```
key(2)
```

**Source:** `gates_of_hell.talon`

---

### 573. `west`

**Action:**
```
key(left)
```

**Source:** `company_of_heroes_2.talon`

---

### 574. `win.title`

**Action:**
```
Solitaire & Casual Games
```

**Source:** `solitaire_and_casual_games.talon`

---

### 575. `zero attack`

**Action:**
```
key(0) 
    sleep(30ms) 
    key(a) 
    sleep(30ms) 
    mouse_click(0)
```

**Source:** `company_of_heroes_2.talon`

---

### 576. `zero back`

**Action:**
```
key(0) 
    sleep(30ms) 
    key(u) 
    sleep(30ms) 
    mouse_click(0)
```

**Source:** `company_of_heroes_2.talon`

---

### 577. `zoom`

**Action:**
```
user.mouse_scroll_up()
```

**Source:** `company_of_heroes_2.talon`

---

### 578. `zoom`

**Action:**
```
key(+)
```

**Source:** `gates_of_hell.talon`

---

### 579. `zoom`

**Action:**
```
key(keypad_8)
```

**Source:** `sanctus_reach.talon`

---

### 580. `zoom`

**Action:**
```
key(keypad_8)
```

**Source:** `there_came_an_echo.talon`

---

### 581. `zoom [in]`

**Action:**
```
key(keypad_plus)
```

**Source:** `colbot.talon`

---

### 582. `zoom [in]`

**Action:**
```
mouse_move(40, 1035) 
    sleep(100ms) 
    mouse_click(0)
```

**Source:** `last_train_home.talon`

---

### 583. `zoom it`

**Action:**
```
key(super-ctrl-f8)
```

**Source:** `global.talon`

---

### 584. `zoom out`

**Action:**
```
key(keypad_minus)
```

**Source:** `colbot.talon`

---

### 585. `zoom out`

**Action:**
```
user.mouse_scroll_down()
```

**Source:** `company_of_heroes_2.talon`

---

### 586. `zoom out`

**Action:**
```
key(numpad_minus)
```

**Source:** `gates_of_hell.talon`

---

### 587. `zoom out`

**Action:**
```
mouse_move(80, 1035) 
    sleep(100ms) 
    mouse_click(0)
```

**Source:** `last_train_home.talon`

---

### 588. `zoom out`

**Action:**
```
key(keypad_2)
```

**Source:** `sanctus_reach.talon`

---

### 589. `zoom out`

**Action:**
```
key(keypad_2)
```

**Source:** `there_came_an_echo.talon`

---

### 590. `zoom right in`

**Action:**
```
user.mouse_scroll_up() 
    sleep(30ms) 
    user.mouse_scroll_up() 
    sleep(30ms) 
    use
```

**Source:** `company_of_heroes_2.talon`

---

### 591. `zoom right out`

**Action:**
```
user.mouse_scroll_down() 
    sleep(30ms) 
    user.mouse_scroll_down() 
    sleep(30ms)
```

**Source:** `company_of_heroes_2.talon`

---


## 📌 Other


### 592. `(ad tag)`

**Action:**
```
user.run_application_csharp_database_command("add tag " + text)
```

**Source:** `global_code_writing_helper.talon`

---

### 593. `(add tag) <user.text>`

**Action:**
```
user.run_application_csharp_database_command("add tag " + text)
```

**Source:** `global_code_writing_helper.talon`

---

### 594. `(ask it)`

**Action:**
```
insert("?") 
    sleep(200ms) 
    key(enter)
```

**Source:** `global.talon`

---

### 595. `(basket)`

**Action:**
```
insert("?") 
    sleep(200ms) 
    key(enter)
```

**Source:** `global.talon`

---

### 596. `(stop tracking)`

**Action:**
```
key(ctrl-alt-[)
```

**Source:** `global_customisations.talon`

---

### 597. `<number_small> items`

**Action:**
```
key(shift-down) 
    repeat(number_small-1)
```

**Source:** `global_code_writing_helper.talon`

---

### 598. `[save to] disk`

**Action:**
```
key(ctrl-s)
```

**Source:** `global.talon`

---

### 599. `^(full stop)+$`

**Action:**
```
key(super-h) 
    sleep(100ms) 
    speech.enable()
```

**Source:** `sleep_mode.talon`

---

### 600. `^(release)+$`

**Action:**
```
user.run_application_csharp_database_command("Release Control") 
    speech.enable() 
    key("
```

**Source:** `sleep_mode.talon`

---

### 601. `^(stop voice [typing])+$`

**Action:**
```
key(super-h) 
    sleep(100ms) 
    key(escape) 
    speech.enable() 
    #key("ctrl-shift-le
```

**Source:** `sleep_mode.talon`

---

### 602. `^command (return`

**Action:**
```
mode.disable("dictation") 
    mode.enable("command") 
    sleep(100ms) 
    key(enter)
```

**Source:** `dictation_mixed_modes.talon`

---

### 603. `^go down`

**Action:**
```
key(down)
```

**Source:** `dictation_mixed_modes.talon`

---

### 604. `^go down <user.ordinals_small>`

**Action:**
```
key("down:{ordinals_small}")
```

**Source:** `dictation_mixed_modes.talon`

---

### 605. `^go left`

**Action:**
```
key(left)
```

**Source:** `dictation_mixed_modes.talon`

---

### 606. `^go left <user.ordinals_small>`

**Action:**
```
key("left:{ordinals_small}")
```

**Source:** `dictation_mixed_modes.talon`

---

### 607. `^go right`

**Action:**
```
key(right)
```

**Source:** `dictation_mixed_modes.talon`

---

### 608. `^go right <user.ordinals_small>`

**Action:**
```
key("right:{ordinals_small}")
```

**Source:** `dictation_mixed_modes.talon`

---

### 609. `^go up`

**Action:**
```
key(up)
```

**Source:** `dictation_mixed_modes.talon`

---

### 610. `^go up <user.ordinals_small>`

**Action:**
```
key("up:{ordinals_small}")
```

**Source:** `dictation_mixed_modes.talon`

---

### 611. `^read that`

**Action:**
```
#This command relies on text being selected and will read the text out loud 
    text = edit.sel
```

**Source:** `gpt.talon`

---

### 612. `^space`

**Action:**
```
key(space)
```

**Source:** `dictation_mixed_modes.talon`

---

### 613. `^tabby`

**Action:**
```
key(tab)
```

**Source:** `dictation_mixed_modes.talon`

---

### 614. `alternate`

**Action:**
```
key(alt)
```

**Source:** `global_customisations.talon`

---

### 615. `ampersands out`

**Action:**
```
insert(" && ")
```

**Source:** `global_code_writing_helper.talon`

---

### 616. `and hostname`

**Action:**
```
J40L4V3
```

**Source:** `global_customisations.talon`

---

### 617. `attribute {user.html_attributes}`

**Action:**
```
insert(user.html_attributes) 
    insert(' ') 
    key(left left)
```

**Source:** `keywords.talon`

---

### 618. `begin Upwork tracking`

**Action:**
```
key(ctrl-alt-])
```

**Source:** `global_customisations.talon`

---

### 619. `build like <user.text>`

**Action:**
```
clause = " LIKE '%{text}%'" 
    insert(clause)
```

**Source:** `global_code_writing_helper.talon`

---

### 620. `calculate <user.number_string> divided by <user.number_string>`

**Action:**
```
value = user.calculate_divide(number_string_1, number_string_2) 
    insert(value)
```

**Source:** `global_customisations.talon`

---

### 621. `calculate <user.number_string> minus <user.number_string>`

**Action:**
```
value = user.calculate_minus(number_string_1, number_string_2) 
    insert(value)
```

**Source:** `global_customisations.talon`

---

### 622. `calculate <user.number_string> plus <user.number_string>`

**Action:**
```
value = user.calculate_plus(number_string_1, number_string_2) 
    insert(value)
```

**Source:** `global_customisations.talon`

---

### 623. `capital smash <user.text>`

**Action:**
```
result = user.capital_strip(text) 
    insert(result)
```

**Source:** `global_code_writing_helper.talon`

---

### 624. `command palette`

**Action:**
```
key(super-alt-space)
```

**Source:** `global.talon`

---

### 625. `computer <user.text>`

**Action:**
```
result=user.get_result_from_open_ai(text,"") 
    #app.notify(result) 
    #insert(result)
```

**Source:** `experimental_service.talon`

---

### 626. `context menu`

**Action:**
```
key(menu)
```

**Source:** `global.talon`

---

### 627. `control abbreviation`

**Action:**
```
insert("ctrl")
```

**Source:** `global_customisations.talon`

---

### 628. `custom attributes`

**Action:**
```
user.open_url("https://github.com/Mark-Phillipson/talon_my_stuff/blob/4492ceb5a75c6d4978d43106bc6
```

**Source:** `global_code_writing_helper.talon`

---

### 629. `custom categories`

**Action:**
```
user.open_url("https://github.com/Mark-Phillipson/talon_my_stuff/blob/5d910569f482265b8f1ee53b524
```

**Source:** `global_code_writing_helper.talon`

---

### 630. `custom languages`

**Action:**
```
user.open_url("https://github.com/Mark-Phillipson/talon_my_stuff/blob/bd0e11dac2957e8cfe1061d0097
```

**Source:** `global_code_writing_helper.talon`

---

### 631. `emoji {user.emoji}`

**Action:**
```
user.paste(emoji)
```

**Source:** `global.talon`

---

### 632. `equals out`

**Action:**
```
insert(" == ")
```

**Source:** `global_code_writing_helper.talon`

---

### 633. `fake phone number`

**Action:**
```
phoneNumber = user.generate_random_number() 
    insert(phoneNumber)
```

**Source:** `global_customisations.talon`

---

### 634. `find again`

**Action:**
```
key(f3)
```

**Source:** `global_customisations.talon`

---

### 635. `fluent search`

**Action:**
```
key(super-ctrl-shift)
```

**Source:** `global_customisations.talon`

---

### 636. `fluent search <user.text>`

**Action:**
```
key(super-ctrl-shift) 
    sleep(300ms) 
    insert(text) 
    sleep(300ms)
```

**Source:** `global_customisations.talon`

---

### 637. `fresh paragraph`

**Action:**
```
key(end) 
    key(enter) 
    key(enter)
```

**Source:** `dictation_mixed_modes.talon`

---

### 638. `get [meaning] phrase <user.text>`

**Action:**
```
result=user.get_result_from_open_ai(text,"Please return a phrase to this one with the same meanin
```

**Source:** `experimental_service.talon`

---

### 639. `get correct [<user.text>]`

**Action:**
```
result=user.get_result_from_open_ai(text,"There is a likelihood that the speech recognition has m
```

**Source:** `experimental_service.talon`

---

### 640. `get opposite [word] <user.text>`

**Action:**
```
result=user.get_result_from_open_ai(text,"Please return a word that is the opposite of the given
```

**Source:** `experimental_service.talon`

---

### 641. `get similar [phrase] <user.text>`

**Action:**
```
result=user.get_result_from_open_ai(text,"Please return a similar phrase to this one") 
    inse
```

**Source:** `experimental_service.talon`

---

### 642. `get simile <user.text>`

**Action:**
```
result=user.get_result_from_open_ai(text,"Please return a single word that is a simile for the gi
```

**Source:** `experimental_service.talon`

---

### 643. `glide [cursor]`

**Action:**
```
key(super-alt-.)
```

**Source:** `global.talon`

---

### 644. `go [to] desktop`

**Action:**
```
user.folder_navigate("C:\\Users\\MPhil\\Desktop")
```

**Source:** `global_code_writing_helper.talon`

---

### 645. `go [to] desktop pictures`

**Action:**
```
user.folder_navigate("C:\\DesktopPictures")
```

**Source:** `global_code_writing_helper.talon`

---

### 646. `go [to] documents`

**Action:**
```
user.folder_navigate("C:\\Users\\MPhil\\OneDrive\\Documents")
```

**Source:** `global_code_writing_helper.talon`

---

### 647. `go [to] downloads`

**Action:**
```
user.folder_navigate("C:\\Users\\MPhil\\Downloads")
```

**Source:** `global_code_writing_helper.talon`

---

### 648. `go [to] pictures`

**Action:**
```
user.folder_navigate("C:\\Users\\MPhil\\OneDrive\\Pictures")
```

**Source:** `global_code_writing_helper.talon`

---

### 649. `go [to] videos`

**Action:**
```
user.folder_navigate("C:\\Users\\MPhil\\Videos")
```

**Source:** `global_code_writing_helper.talon`

---

### 650. `go down`

**Action:**
```
key(down)
```

**Source:** `global_customisations.talon`

---

### 651. `go left`

**Action:**
```
key(left)
```

**Source:** `global_customisations.talon`

---

### 652. `go right`

**Action:**
```
key(right)
```

**Source:** `global_customisations.talon`

---

### 653. `go up`

**Action:**
```
key(up)
```

**Source:** `global_customisations.talon`

---

### 654. `hex color random [<user.text>]`

**Action:**
```
result=user.get_result_from_open_ai(text,"Please return a random hex color code.") 
    insert(r
```

**Source:** `experimental_service.talon`

---

### 655. `if statement razor`

**Action:**
```
insert("@if (true) { }") 
    sleep(100ms) 
    key(escape) 
    sleep(100ms) 
    key(left l
```

**Source:** `global_code_writing_helper.talon`

---

### 656. `key(ctrl-shift-`)`

**Action:**
```
user.talon_restart()
```

**Source:** `talon_helpers.talon`

---

### 657. `key(keypad_minus)`

**Action:**
```
speech.enable()
```

**Source:** `global_customisations.talon`

---

### 658. `key(keypad_plus)`

**Action:**
```
speech.disable()
```

**Source:** `global_customisations.talon`

---

### 659. `keyword {user.keywords}`

**Action:**
```
insert(user.keywords)
```

**Source:** `keywords.talon`

---

### 660. `left <number_small> items`

**Action:**
```
key(shift-left) 
    repeat(number_small-1)
```

**Source:** `global_code_writing_helper.talon`

---

### 661. `move [to] bottom`

**Action:**
```
key(ctrl-end)
```

**Source:** `global_customisations.talon`

---

### 662. `move [to] top`

**Action:**
```
key(ctrl-home)
```

**Source:** `global_customisations.talon`

---

### 663. `new line`

**Action:**
```
key(enter)
```

**Source:** `dictation_mixed_modes.talon`

---

### 664. `new paragraph`

**Action:**
```
key(enter)
```

**Source:** `dictation_mixed_modes.talon`

---

### 665. `not app`

**Action:**
```
devenv.exe
```

**Source:** `global_not_visual_studio.talon`

---

### 666. `os`

**Action:**
```
windows
```

**Source:** `global_customisations.talon`

---

### 667. `pause some`

**Action:**
```
sleep(500ms)
```

**Source:** `global_customisations.talon`

---

### 668. `pick <number_small>`

**Action:**
```
user.pick_item(number_small)
```

**Source:** `global.talon`

---

### 669. `pick <user.letters>`

**Action:**
```
"{letters}" 
    key(enter)
```

**Source:** `global.talon`

---

### 670. `pick <user.word>`

**Action:**
```
"{word}" 
    key(enter)
```

**Source:** `global.talon`

---

### 671. `pick to`

**Action:**
```
user.pick_item(2)
```

**Source:** `global.talon`

---

### 672. `pipes out`

**Action:**
```
insert(" \
```

**Source:** `\.talon`

---

### 673. `press alt`

**Action:**
```
key(alt)
```

**Source:** `global_customisations.talon`

---

### 674. `remove last space`

**Action:**
```
key(ctrl-left) 
    sleep(100ms) 
    key(backspace) 
    sleep(100ms) 
    key(end)
```

**Source:** `global_customisations.talon`

---

### 675. `right <number_small> items`

**Action:**
```
key(shift-right) 
    repeat(number_small-1)
```

**Source:** `global_code_writing_helper.talon`

---

### 676. `script <user.text>`

**Action:**
```
result=user.get_result_from_open_ai(text,"") 
    insert(result)
```

**Source:** `experimental_service.talon`

---

### 677. `search old list <user.text>`

**Action:**
```
user.run_application_search_intellisense(text)
```

**Source:** `global_code_writing_helper.talon`

---

### 678. `sequel {user.sql_keywords}`

**Action:**
```
insert(user.sql_keywords)
```

**Source:** `global_code_writing_helper.talon`

---

### 679. `settings()`

**Action:**
```
#user.model_temperature = 0.6
```

**Source:** `settings_custom.talon`

---

### 680. `settings()`

**Action:**
```
# Stop continuous scroll/gaze scroll with a pop 
    user.mouse_enable_pop_stops_scroll = false
```

**Source:** `sleep_mode.talon`

---

### 681. `settings()`

**Action:**
```
# Echo the subtitles from talon back via tts 
    user.echo_dictation = false
```

**Source:** `tts_settings.talon`

---

### 682. `settings()`

**Action:**
```
# Stop continuous scroll/gaze scroll with a pop 
    user.mouse_enable_pop_stops_scroll = false
```

**Source:** `global_code_writing_helper.talon`

---

### 683. `settings()`

**Action:**
```
user.clipboard_manager_max_rows = 26
```

**Source:** `clipboard_manager.talon`

---

### 684. `settings()`

**Action:**
```
# Don't show mode indicator by default 
    user.mode_indicator_show = false 
    # 30pixels di
```

**Source:** `mode_indicator.talon`

---

### 685. `shortcut guide`

**Action:**
```
key(super-shift-/)
```

**Source:** `global_customisations.talon`

---

### 686. `show letters`

**Action:**
```
key(ctrl-super-alt-m)
```

**Source:** `global_customisations.talon`

---

### 687. `snip folder desktop`

**Action:**
```
insert("C:\\Users\\MPhil\\Desktop")
```

**Source:** `global.talon`

---

### 688. `snip folder desktop pictures`

**Action:**
```
insert("C:\\DesktopPictures")
```

**Source:** `global.talon`

---

### 689. `snip folder downloads`

**Action:**
```
insert("C:\\Users\\MPhil\\Downloads")
```

**Source:** `global.talon`

---

### 690. `snip folder local documents`

**Action:**
```
insert("C:\\Users\\MPhil\\Documents")
```

**Source:** `global.talon`

---

### 691. `snip folder one drive documents`

**Action:**
```
insert("C:\\Users\\MPhil\\OneDrive\\Documents")
```

**Source:** `global.talon`

---

### 692. `snip folder pictures`

**Action:**
```
insert("C:\\Users\\MPhil\\OneDrive\\Pictures")
```

**Source:** `global.talon`

---

### 693. `snip folder repose`

**Action:**
```
insert("C:\\Users\\MPhil\\source\\repos")
```

**Source:** `global.talon`

---

### 694. `start recording`

**Action:**
```
user.switcher_focus("obs64.exe") 
    key(ctrl-super-shift-r) 
    sleep(50ms) 
    app.notify
```

**Source:** `global_customisations.talon`

---

### 695. `start twitch bot`

**Action:**
```
user.system_command("c:/Users/MPhil/source/repos/TwitchBot01/launch-bot.bat")
```

**Source:** `global.talon`

---

### 696. `stop recording`

**Action:**
```
user.switcher_focus("obs64.exe") 
    key(ctrl-super-shift-s) 
    sleep(50ms) 
    app.notify
```

**Source:** `global_customisations.talon`

---

### 697. `tab backwards`

**Action:**
```
key(shift-tab)
```

**Source:** `global_customisations.talon`

---

### 698. `tab clothes`

**Action:**
```
user.tab_close_wrapper()
```

**Source:** `global.talon`

---

### 699. `tabby`

**Action:**
```
key(tab)
```

**Source:** `global_customisations.talon`

---

### 700. `tag`

**Action:**
```
user.clipboard_manager
```

**Source:** `clipboard_manager_open.talon`

---

### 701. `that)`

**Action:**
```
# Select all text and runs a model prompt on the text and pastes the results BELOW. 
    key(ctr
```

**Source:** `gpt.talon`

---

### 702. `total <user.prose>$`

**Action:**
```
user.insert_formatted(prose, "CAPITALIZE_ALL_WORDS")
```

**Source:** `global.talon`

---

### 703. `what can I say`

**Action:**
```
user.run_application_voice_admin_windows_forms_launcher("Talon Search")
```

**Source:** `global_code_writing_helper.talon`

---

### 704. `what can I say new`

**Action:**
```
user.launch_talon_voice_command_server()
```

**Source:** `global_code_writing_helper.talon`

---

### 705. `ziggy <user.text>`

**Action:**
```
#do nothing calling amazon Echo device
```

**Source:** `global_customisations.talon`

---

### 706. `{user.naughty_words}`

**Action:**
```
app.notify("That's quite enough of that", "More Money for the Sware Jar!", "TALON", true)
```

**Source:** `global_customisations.talon`

---



