(save [that]) | (save file) : key( ctrl-s)
default box : key(ctrl-shift-alt-b)
redo : key( ctrl-y)
undo : key( ctrl-z)         
undo <user.number_signed_small> : 
    key( ctrl-z)
    repeat(number_signed_small-1)
backspace : key(backspace)
delete : key(delete)
copy : key( ctrl-c)
paste : key( ctrl-v)
cut : key( ctrl-x)
voice coding wake : speech.enable()
use dragon : 
    speech.disable()
    key(keypad_plus)
#for dragon
microphone (off) | (on) | (toggle): key(keypad_plus)    
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
blazer: insert("blazor")    
context menu: key(shift-f10)
#for the upwork tracking application
(start) | (begin) tracking: key( ctrl-alt-])
(end tracking) | (stop tracking): key( ctrl-alt-[)
open clipboard: key(super-v)
clipboard manager: key(ctrl-shift-alt-c)
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
(show letters) | (show numbers): key(ctrl-super-alt-m)
control abbreviation: insert("ctrl")
(computer sleep) | (sleep computer): 
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
toggle mouse: key(ctrl-alt-f9)    
centre mouse: key(ctrl-alt-f1)
tabby : key(tab)
fluent search: key(super-ctrl-shift)
fluent search <user.text>:
    key(super-ctrl-shift)
    sleep(300ms)
    insert(text)
    sleep(300ms)
pause some: sleep(500ms)        
select rest of line: key(shift-end)
move up <number_small>:
    key(up)
    repeat(number_small-1)
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
focus studio: user.switcher_focus("devenv.exe")
focus data: user.switcher_focus("azuredatastudio.exe")
dictation <user.text>: insert(text)
cap <user.text>: insert(text)
click: mouse_click(0)
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
test method:
    methodName=clip.text()
    key(super-r)
    sleep(300ms)
    insert("cmd")
    sleep(300ms)
    key(enter)
    sleep(600ms)
    insert("dotnet test --filter Name~{methodName} -- Playwright.LaunchOptions.Headless=false")
    sleep(300ms)
    key(enter)
