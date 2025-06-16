os: windows
-
redo:                       key(ctrl-y)
undo:                       key(ctrl-z)
undo <user.number_signed_small>:
    key(ctrl-z)
    repeat(number_signed_small-1)
backspace:                  key(backspace)
backspace <user.number_signed_small>:
    key(backspace)
    repeat(number_signed_small-1)
delete:                     key(delete)
delete <user.number_signed_small>:
    key(delete)
    repeat(number_signed_small-1)
maximise [window]:
    key(alt-space)
    sleep(700ms)
    key(x)
restore [window]:
    key(alt-space)
    sleep(400ms)
    key(r)
minimise [window]:
    key(alt-space)
    sleep(400ms)
    key(n)
switch [window]:
    key(alt-tab)
[windows] switch both: 
    key(super-shift-left)
    sleep(60ms)
    key(alt-tab)
    sleep(60ms)
    key(super-shift-left)
window [monitor] switch:      key(super-shift-left)
move [to] top:                key(ctrl-home)
move [to] bottom:             key(ctrl-end)
[focus] system tray:          key(super-b)
focus desktop:              key(super-d)
focus taskbar:              key(super-t)
find again:                 key(f3)
#context menu: key(shift-f10)
#for the upwork tracking application
begin Upwork tracking: key(ctrl-alt-])
(end tracking) | (stop tracking): key(ctrl-alt-[)
open clipboard:             key(super-v)
windows start <user.text>:
    key(super)
    sleep(300ms)
    insert(text)
open file manager:          key(super-e)
launch preview:
    key(super)
    sleep(900ms)
    insert("visual studio 2022 preview")
    sleep(900ms)
    key(enter)
launch code:
    key(super)
    sleep(900ms)
    insert("visual studio code")
    sleep(900ms)
    key(enter)
show letters:               key(ctrl-super-alt-m)
control abbreviation:       insert("ctrl")
computer sleep confirm:
    speech.disable()
    key(super-r)
    sleep(300ms)
    insert("cmd")
    sleep(300ms)
    key(enter)
    sleep(600ms)
    #will hibernate the computer!
    insert("rundll32.exe powrprof.dll, SetSuspendState Sleep")
    sleep(300ms)
    key(enter)
# toggle mouse: key(ctrl-alt-f9)
# centre mouse: key(ctrl-alt-f1)
tabby:                      key(tab)
fluent search:              key(super-ctrl-shift)
fluent search <user.text>:
    key(super-ctrl-shift)
    sleep(300ms)
    insert(text)
    sleep(300ms)
pause some:                 sleep(500ms)
select rest of line:        key(shift-end)
base | home:              key(home)
double home:
    key(home)
    sleep(100ms)
    key(home)
remove last space:
    key(ctrl-left)
    sleep(100ms)
    key(backspace)
    sleep(100ms)
    key(end)
tab backwards:              key(shift-tab)
#switch to <user.running_applications>: user.switcher_focus(running_applications)
#This one not working:
focus data:                 user.switcher_focus("Azure Data Studio")
focus terminal:             user.switcher_focus("WindowsTerminal.exe")
focus code:                 user.switcher_focus("code.exe")
focus studio:               user.switcher_focus("devenv.exe")
focus edge:                 user.switcher_focus("msedge.exe")
focus chrome:               user.switcher_focus("chrome.exe")
dictation <user.text>:      insert(text)
click:                      mouse_click(0)
move up <number_small>:
    key(up)
    repeat(number_small-1)
go up:
    key(up)
go down:
    key(down)
go left:
    key(left)
go right:
    key(right)
[enter] email address:      insert("MPhillipson0@Gmail.com")
test email:                 insert("firstlastname@domain.co.uk")
[enter] office username:      insert("Phillipson@MSPSystems.onmicrosoft.com")
[enter] extra email address:      insert("Mark.S.Phillipson@outlook.com")
[enter] password: insert("Blackberry1!") 
[enter] username:
    insert("MPhil")
    sleep(100ms)
    key(tab)
alternate:                  key(alt)
fake email:
    emailAddress = user.fake_email()
    insert(emailAddress)
fake phone number:
    phoneNumber = user.generate_random_number()
    insert(phoneNumber)
enter timestamp:            insert(user.time_format("%Y-%m-%d %H:%M:%S"))
select and copy:
    key(ctrl-a)
    sleep(100ms)
    key(ctrl-c)
    sleep(100ms)
voice typing:
    speech.disable()
    sleep(20ms)
    key(super-h)
(voice typing in code) | (draft in code):
    user.switcher_focus("code")
    speech.disable()
    sleep(500ms)
    key(ctrl-n)
    sleep(500ms)
    key(super-h)
[enter] my name:              insert("Mark Phillipson")
[enter] my last name:         insert("Phillipson")
[enter] army number:          insert("24593308")
[enter] default Github:       insert("https://github.com/Mark-Phillipson/BlazorCRUD_UIGenerator")
key(keypad_plus):           speech.disable()
key(keypad_minus):          speech.enable()
ziggy <user.text>: #do nothing calling amazon Echo device
drowse:
    #app.notify('I feel drowsy.', 'Talon Now Sleeping', 'DROWSE', true)
    speech.disable()
press alt: key(alt)    
click drowse:
    speech.disable()
    mouse_click(0)
(clipboard search) | (search clipboard):           key(ctrl-shift-f12)
start recording: 
    user.switcher_focus("obs64.exe")
    key(ctrl-super-shift-r)
    sleep(50ms)
    app.notify('Running OBS record command', 'Message From Talon Voice', 'TALON', true)
stop recording: 
    user.switcher_focus("obs64.exe")
    key(ctrl-super-shift-s)
    sleep(50ms)
    app.notify('Running OBS stop record command', 'Message From Talon Voice', 'TALON', true)
{user.naughty_words}:
        app.notify("That's quite enough of that", "More Money for the Sware Jar!", "TALON", true)
take line: 
    key(end)
    sleep(50ms)
    key(shift-home)
[focus] development template: key(ctrl-alt-shift-t)
focus [talon] my stuff: key(ctrl-alt-shift-m)
focus [talon] community: key(ctrl-alt-shift-y)
focus Blazor CRUD: key(ctrl-alt-shift-c)
focus voice admin: key(ctrl-alt-shift-v)
click and sleep: 
    mouse_click(0)
    speech.disable()
talon relaunch: talon_relaunch()
calculate <user.number_string> minus <user.number_string>:
    value = user.calculate_minus(number_string_1, number_string_2)
    insert(value)
calculate <user.number_string> plus <user.number_string>:
    value = user.calculate_plus(number_string_1, number_string_2)
    insert(value)
calculate <user.number_string> times <user.number_string>:
    value = user.calculate_multiply(number_string_1, number_string_2)
    insert(value)
calculate <user.number_string> divided by <user.number_string>:
    value = user.calculate_divide(number_string_1, number_string_2)
    insert(value)
date insert: insert(user.time_format("%d-%m-%Y"))
# Microsoft Power Toys Voice Commands
shortcut guide: key(super-shift-/)    
color picker: key(super-shift-c)