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
    sleep(400ms)
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
move [to] top:                key(ctrl-home)
move [to] bottom:             key(ctrl-end)
window monitor [switch]:      key(super-shift-left)
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
open terminal:              key(super-t)
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
focus data:                 user.switcher_focus("azure data studio")
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
go up <number_small>:
    key(up)
    repeat(number_small-1)
go down <number_small>:
    key(down)
    repeat(number_small-1)
go left <number_small>:
    key(left)
    repeat(number_small-1)
go right <number_small>:
    key(right)
    repeat(number_small-1)
#Clears the message in Visual Studio
clear message:
    mouse_move(1500, 900)
    mouse_click(0)
[enter] email address:      insert("MPhillipson0@Gmail.com")
test email:                 insert("firstlastname@domain.co.uk")
enter username:
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
reset mouse:
    user.mouse_sleep()
    #Disables control mouse, zoom mouse, and re-enables cursor
    user.mouse_show_cursor()
select and copy:
    key(ctrl-a)
    sleep(100ms)
    key(ctrl-c)
    sleep(100ms)
voice typing:
    key(super-h)
    speech.disable()
voice typing in code:
    user.switcher_focus("Visual Studio code")
    speech.disable()
    sleep(500ms)
    key(ctrl-n)
    sleep(500ms)
    key(super-h)
enter my name:              insert("Mark Phillipson")
enter my last name:         insert("Phillipson")
enter army number:          insert("24593308")
start recording:            key(alt-shift-9)
stop recording:             key(alt-shift-0)
key(keypad_plus):           speech.disable()
key(keypad_minus):          speech.enable()
ziggy <user.text>: #do nothing calling amazon Echo' device
drowse:
    #app.notify('I feel drowsy.', 'Talon Now Sleeping', 'DROWSE', true)
    speech.disable()
press alt: key(alt)    
click drowse:
    speech.disable()
    mouse_click(0)
#SmartNav Mouse Commands
center mouse:               key(ctrl-alt-f12)
toggle pause mouse:         key(ctrl-alt-f9)
scroll mouse:               key(ctrl-alt-f11)
precision mode:             key(ctrl-alt-f8)
search clipboard:           key(ctrl-shift-f12)