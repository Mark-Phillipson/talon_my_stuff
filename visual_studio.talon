os: windows
app: visual_studio
app: devenv.exe
-

tag(): user.tabs
tag(): user.line_commands
tag(): user.find_and_replace
tag(): user.snippets
tag(): user.multiple_cursors
#multiple_cursor.py support end

# Panels
(solution explorer) | (panel solution): key(ctrl-alt-shift-r)
panel properties: key(f4)
panel output: key(ctrl-alt-o)
panel class: key(ctrl-shift-c)
panel errors: key(ctrl-\ ctrl-e)
panel design: key(shift-f7)
panel marks: key(ctrl-k ctrl-w)
panel breakpoints: key(ctrl-alt-b)
window position: key(alt-minus)
close tool window: key(shift-escape)
(close tab) | (closed tab): key(ctrl-alt-f6)

# Settings
show settings: key(alt-t o)
#show shortcuts:
#show snippets:

# Display
fullscreen switch: key(shift-alt-enter)
wrap switch: key(ctrl-e ctrl-w)

# File Commands
(find files) | (file hunt) [<user.text>]:
    key(ctrl-shift-t)
    insert(text or "")
file create: key(ctrl-n)
#file open folder:
file rename: key(ctrl-[ s f2)
file reveal: key(ctrl-[ s)
show recent files: 
    key(alt-f)
    sleep(100ms)
    key(f)
show recent [projects | solutions]:
    key(alt-f)
    sleep(100ms)
    key(j)
# Language Features
hint show: key(ctrl-shift-space)
definition show: key(f12)
definition peek: key(alt-f12)
references find: key(shift-f12)
format that: key(ctrl-k ctrl-d)
format selection: key(ctrl-k ctrl-f)
imports fix: key(ctrl-r ctrl-g)

# problem next:
# problem last:
# problem fix:
refactor field: key(ctrl-r ctrl-e)
refactor interface: key(ctrl-r ctrl-i)
refactor method: key(ctrl-r ctrl-m)
refactor reorder parameters: key(ctrl-r ctrl-o)
refactor remove parameters: key(ctrl-r ctrl-v)
refactor that: key(ctrl-r ctrl-r)

#code navigation
(go declaration | follow): key(ctrl-f12)
(last position) | (go back): key(ctrl--)
go forward: key(ctrl-shift--)
go [to] implementation: key(f12)
go recent [<user.text>]:
    key(ctrl-. ctrl-r)
    sleep(100ms)
    insert(text or "")
go type [<user.text>]:
    key(ctrl-1 ctrl-t)
    sleep(100ms)
    insert(text or "")
go member [<user.text>]:
    key(alt-\)
    sleep(100ms)
    insert(text or "")
go usage: key(shift-f12)

# Bookmarks.
go marks: key(ctrl-k ctrl-w)
toggle mark: key(ctrl-k ctrl-k)
go next mark: key(ctrl-k ctrl-n)
go last mark: key(ctrl-k ctrl-p)

# Folding
fold toggle: key(ctrl-m ctrl-m)
fold toggle all: key(ctrl-m ctrl-l)
fold definitions: key(ctrl-m ctrl-o)

#Debugging
start application: key(ctrl-f5)
(reset code) | (stop application): key(shift-f5)
(start debugging) | (debug application): key(f5)
show code places:
    key(ctrl-alt-shift-h)
    sleep(100ms)
    key(ctrl-alt-shift-z)
list members: key(ctrl-j)    
break point: key(f9)
step over: key(f10)
debug step into: key(f11)
debug step out [of]: key(f10)
debug start: key(f5)
debug stopper: key(shift-f5)
debug continue: key(f5)

# findinghing the code
(hunt next) | (find next): key(f3)
(hunt last) | (find last): key(shift-f3)
find following [<user.text>]:
    key(ctrl-f)
    sleep(100ms)
    insert(text or "")
    key(escape)
#navigation    
(go to line) | (line) :
    key(ctrl-g)
navigate : key(ctrl-,)
navigate <user.text>:
    key(ctrl-,)
    sleep(100ms)
    insert(text or "")
jump codes: key(ctrl-shift-j)    
land carrot: key(enter)
select token: key(shift-enter)
right side: key(alt-enter)
in brackets: key(ctrl-enter)
(quick actions) | (open smart tag):    key(ctrl-.)
save all: key(ctrl-shift-s)
collect marker: key(alt-end)
drop marker: key(alt-home)
swap marker: key(alt-shift-home)
search code: key(ctrl-f)
search code [<user.text>]:
    key(ctrl-f)
    sleep(100ms)
    insert(text or "")
    key(escape)
find again: key(f3)
(next) | (following) issue: key(alt-pagedown)
(last) | (previous) issue: key(alt-pageup)
parameter info: key(ctrl-shift-space)
show error [list]: key(ctrl-\ ctrl-e)
expand selection: key(alt-shift-=)





















