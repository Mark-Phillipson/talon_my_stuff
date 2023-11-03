(save [that]) | (save file) : key( ctrl-s)
default box : key(ctrl-shift-alt-b)
fresh line : 
         key(end)
         key(enter)
fresh line above: 
        key(home)
        key(home)
        key(enter)        
        key(up)
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
left select: key( ctrl-shift-left)
right select: key( ctrl-shift-right)
move to top: key( ctrl-home)
move to bottom: key( ctrl-end)
window monitor switch: key( super-shift-right)
<user.number_signed_small> items:
     key(shift-down)
     repeat(number_signed_small-1)
left <user.number_signed_small> items :
    key(shift-left)
    repeat(number_signed_small-1)
right <user.number_signed_small> items :
    key(shift-right)
    repeat(number_signed_small-1)        
move down <user.number_signed_small> :
    key(down)
    repeat(number_signed_small-1)            
move up <user.number_signed_small> :
    key(up)
    repeat(number_signed_small-1)                            
focus system tray: key( super-b)    
focus desktop: key( super-d)
focus taskbar: key( super-t)
select matching <user.number_signed_small> :
    key( shift-alt-.)
    repeat(number_signed_small-1)
select matching: key( shift-alt-.)    
select matching all: key(shift-alt-;)
search list <user.text>:
    user.run_application_search_intellisense(text)
blazer: insert("blazor")    
context menu: key(shift-f10)