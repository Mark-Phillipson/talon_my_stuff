sharp <user.text>:
    user.run_application_csharp_database_command(text)
capital smash <user.text>:
    result = user.capital_strip(text)
    insert(result)
capital <user.letter> <user.letter> <user.letter>:
    result = user.capital_letters(letter_1, letter_2, letter_3)
    insert(result)
(ad tag) | (add tag) <user.text>:
    user.run_application_csharp_database_command("add tag " + text)
search old list <user.text>:
    user.run_application_search_intellisense(text)
search list <user.text>:
    user.run_application_voice_admin_windows_forms(text)
{user.snippet_language} {user.snippet_category}: user.run_application_voice_admin_windows_forms_language_category(snippet_language, snippet_category)
launcher {user.launcher_category}: user.run_application_voice_admin_windows_forms_launcher(launcher_category)
fresh line:
    key(end)
    key(enter)
fresh line above:
    key(home)
    key(home)
    key(enter)
    key(up)
left select:                key(ctrl-shift-left)
right select:               key(ctrl-shift-right)
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
brackets out:               insert("()")
[curly] braces in:
    insert("{}")
    sleep(300ms)
    key(left)
[curly] braces out:         insert("{}")
angle brackets in:
    insert("<>")
    sleep(300ms)
    key(left)
angle brackets out:         insert("<>")
pipes out:                  insert(" || ")
ampersands out:             insert(" && ")
equals out:                 insert(" == ")
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
