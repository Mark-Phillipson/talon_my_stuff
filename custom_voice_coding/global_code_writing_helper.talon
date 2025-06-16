settings():
    # Stop continuous scroll/gaze scroll with a pop
    user.mouse_enable_pop_stops_scroll = false
    # Stop pop click with 'control mouse' mode
    user.mouse_enable_pop_click = 0
    # Stop mouse scroll down using hiss noise
    user.mouse_enable_hiss_scroll = false

sharp <user.text>:
    user.run_application_csharp_database_command(text)
capital smash <user.text>:
    result = user.capital_strip(text)
    insert(result)
(ad tag) | (add tag) <user.text>:
    user.run_application_csharp_database_command("add tag " + text)
search old list <user.text>:
    user.run_application_search_intellisense(text)
search list <user.text>:
    user.run_application_voice_admin_windows_forms(text)
{user.snippet_language} {user.snippet_category}: user.run_application_voice_admin_windows_forms_language_category(snippet_language, snippet_category)
launch {user.launcher_category}: user.run_application_voice_admin_windows_forms_launcher(launcher_category)
what can I say: user.run_application_voice_admin_windows_forms_launcher("Talon Search")
launch {user.launcher_category} <user.text>: user.run_application_voice_admin_windows_forms_launcher_with_parameter(launcher_category, text)
# Favourite Folders
go [to] documents: user.folder_navigate("C:\\Users\\MPhil\\OneDrive\\Documents")
go [to] downloads: user.folder_navigate("C:\\Users\\MPhil\\Downloads")
go [to] desktop: user.folder_navigate("C:\\Users\\MPhil\\Desktop")
go [to] pictures: user.folder_navigate("C:\\Users\\MPhil\\OneDrive\\Pictures")
go [to] desktop pictures: user.folder_navigate("C:\\DesktopPictures")
go [to] videos: user.folder_navigate("C:\\Users\\MPhil\\Videos")
launch voice admin: user.launch_voice_admin()
launch realtime:
    key(super-r)
    sleep(300ms)
    insert("cmd")
    sleep(600ms)
    key(enter)
    sleep(600ms)
    insert("cd c:\\Users\\MPhil\\source\\repos\\RealtimeAIApp\\RealtimeFormApp")
    sleep(600ms)
    key(enter)
    sleep(600ms)
    insert("dotnet run --configuration Release --urls http://localhost:5006")
    sleep(300ms)
    key(enter)
    user.open_url("http://localhost:5006")
launch dictation chat:
    user.open_url("http://localhost:5000/chat")
fresh line:
    key(end)
    key(enter)
fresh line above:
    key(home)
    key(home)
    key(enter)
    key(up)
left select: key(ctrl-shift-left)
right select: key(ctrl-shift-right)
<number_small> items:
    key(shift-down)
    repeat(number_small-1)
left <number_small> items:
    key(shift-left)
    repeat(number_small-1)
right <number_small> items:
    key(shift-right)
    repeat(number_small-1)
move down <number_small>:
    key(down)
    repeat(number_small-1)
move up <number_small>:
    key(up)
    repeat(number_small-1)
move left <number_small>:
    key(left)
    repeat(number_small-1)
move right <number_small>:
    key(right)
    repeat(number_small-1)
(double quotes in) | (quotes in):
    insert("\"\"")
    sleep(300ms)
    key(left)
(double quotes out) | (quotes out): insert("\"\"")
brackets in:
    insert("()")
    sleep(300ms)
    key(left)
brackets out: insert("()")
[curly] braces in:
    insert("{}")
    sleep(300ms)
    key(left)
[curly] braces out: insert("{}")
angle brackets in:
    insert("<>")
    sleep(300ms)
    key(left)
angle brackets out: insert("<>")
pipes out: insert(" || ")
ampersands out: insert(" && ")
equals out: insert(" == ")
if statement razor:
    insert("@if (true) { }")
    sleep(100ms)
    key(escape)
    sleep(100ms)
    key(left left left left left)
    key(shift-ctrl-left)
build like <user.text>:
    clause = " LIKE '%{text}%'"
    insert(clause)
new block brackets:
    key(end)
    key(enter)
    insert("{}")
    key(left)
    sleep(100ms)
    key(enter)
    key(up)
move line into braces:
    key(end)
    key(down down)
    key(home)
    key(shift-end)
    key(delete)
    key(delete)
    sleep(50ms)
    key(ctrl-f1)
    key(ctrl-f4)
custom languages: user.open_url("https://github.com/Mark-Phillipson/talon_my_stuff/blob/bd0e11dac2957e8cfe1061d0097e832fc10514cd/custom_voice_coding/custom_snippet_languages.py#L7-L8")
custom categories: user.open_url("https://github.com/Mark-Phillipson/talon_my_stuff/blob/5d910569f482265b8f1ee53b52459b7596fb4a05/custom_voice_coding/custom_snippet_category.py#L12")
custom launcher categories: user.open_url("https://github.com/Mark-Phillipson/talon_my_stuff/blob/a3ca27e064553a88fdb597584b89622b5630533c/custom_voice_coding/custom_launcher_category.py#L7-L8")
custom attributes: user.open_url("https://github.com/Mark-Phillipson/talon_my_stuff/blob/4492ceb5a75c6d4978d43106bc6a9e351596ef0e/custom_voice_coding/html_attributes.py#L7")
#face mode: mode.enable("user.face_mode")
start word game: user.launch_word_game()