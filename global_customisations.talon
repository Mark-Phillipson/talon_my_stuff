
(save [that]) | (save file) : key( ctrl-s)
default box : key(ctrl-shift-alt-b)
redo : key( ctrl-y)
undo : key( ctrl-z)         
undo <user.number_signed_small> : 
    key( ctrl-z)
    repeat(number_signed_small-1)
backspace : key(backspace)
delete : key(delete)
maximise [window]: 
    key(alt-space)
    sleep(300ms)
    key(x)    
restore [window]:
    key( alt-space)
    sleep(300ms)
    key(r)
minimise [window]:
    key(alt-space)
    sleep(300ms)
    key(n)
switch [window]:
    key(alt-tab)    
move to top: key( ctrl-home)
move to bottom: key( ctrl-end)
window monitor switch: key( super-shift-right)
focus system tray: key( super-b)    
focus desktop: key( super-d)
focus taskbar: key( super-t)
find again: key( f3)
#context menu: key(shift-f10)
#for the upwork tracking application
(start) | (begin) tracking: key( ctrl-alt-])
(end tracking) | (stop tracking): key( ctrl-alt-[)
open clipboard: key(super-v)
(clipboard insert) | (clipboard enter): key(ctrl-shift-v)
clipboard manager: key(ctrl-shift-e)
windows start <user.text>:
    key(super)
    sleep(300ms)
    insert(text)
open file manager: key(super-e)
open terminal: key(super-t)
launch preview: 
    key(super)
    sleep(900ms)
    insert("visual studio 2022 preview")
    sleep(900ms)
    key(enter)
(show letters | show numbers): key(ctrl-super-alt-m)
control abbreviation: insert("ctrl")
(computer sleep) | (sleep computer): 
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
tabby : key(tab)
fluent search: key(super-ctrl-shift)
fluent search <user.text>:
    key(super-ctrl-shift)
    sleep(300ms)
    insert(text)
    sleep(300ms)
pause some: sleep(500ms)        
select rest of line: key(shift-end)
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
tab backwards: key(shift-tab)
#switch to <user.running_applications>: user.switcher_focus(running_applications)
#This one not working:
focus data: user.switcher_focus("azure data studio")
focus terminal: user.switcher_focus("WindowsTerminal.exe")
focus code: user.switcher_focus("Visual Studio code")
focus studio: user.switcher_focus("devenv.exe")
focus edge: user.switcher_focus("msedge.exe")
focus chrome: user.switcher_focus("chrome.exe")
dictation <user.text>: insert(text)
cap <user.text>: insert(text)
click: mouse_click(0)
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
[enter] email address    : insert("MPhillipson0@Gmail.com")
test email: insert("firstlastname@domain.co.uk")
enter username: 
    insert("MPhil")
    sleep(100ms)
    key(tab)
alternate: key(alt)
fake email:
    emailAddress=user.fake_email()
    insert(emailAddress)
fake phone number:
    phoneNumber=user.generate_random_number()
    insert(phoneNumber)
enter timestamp: insert(user.time_format("%Y-%m-%d %H:%M:%S"))    
reset mouse: 
    user.mouse_sleep()
    #Disables control mouse, zoom mouse, and re-enables cursor
    user.mouse_show_cursor()
select and copy:
    key(ctrl-a)
    sleep(100ms)
    key(ctrl-c)
    sleep(100ms)    
insert values:
    user.open_url("http://localhost:5000/valuestoinsert")
voice typing:
    key(super-h)
    speech.disable()
voice typing in code:
    user.switcher_focus("Visual Studio code")    
    speech.disable()
    sleep(500ms)
    key(ctrl-n)
    key(super-h)
enter my name: insert("Mark Phillipson")    
enter my last name: insert("Phillipson")
hold down alternate: key('alt', down=True)
hold down control: key('ctrl', down=True)
hold down shift: key('shift', down=True)
hold down super: key('super', down=True)
release alternate: key('alt', up=True)
release control: key('ctrl', up=True)
release shift: key('shift', up=True)
release super: key('super', up=True)
start recording: key(alt-shift-9)        
stop recording: key(alt-shift-0)
        
    
