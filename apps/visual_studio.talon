os: windows
app: visual_studio
app: devenv.exe
app: remote_desktop_connection
app: mstsc.exe
-

tag(): user.tabs
#tag(): user.line_commands
tag(): user.find_and_replace
#tag(): user.snippets
tag(): user.multiple_cursors
#multiple_cursor.py support end

# Panels
solution explorer: key(ctrl-alt-shift-r)
solution explorer collapse:
    key(ctrl-shift-p)
    sleep(100ms)
    key(ctrl-shift-w)
search solution explorer:
    key(ctrl-;)
    key(ctrl-shift-p)
    sleep(100ms)
    key(ctrl-shift-w)
search solution explorer [<user.text>]:
    key(ctrl-;)
    sleep(100ms)
    insert(text or "")
new empty file: key(shift-f2)
[panel] properties: key(f4)
window position: key(alt-minus)
close tool [window]: key(shift-escape)
close tab: key(ctrl-alt-f6)
closed tab: key(ctrl-alt-f6)
# Settings
show settings: key(alt-t o)
#show shortcuts:
#show snippets:

# Display
fullscreen switch: key(shift-alt-enter)
wrap switch: key(ctrl-e ctrl-w)

# File Commands
find in files: key(ctrl-shift-alt-y)
(find files | file hunt) [<user.text>]:
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
(go to definition | definition show): key(f12)
definition peek: key(alt-f12)
references find: key(shift-f12)
format (that | code): key(ctrl-k ctrl-d)
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
(last position | go back): key(ctrl--)
go forward: key(ctrl-shift--)
go [to] implementation: key(ctrl-f12)
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
(toggle collapse | fold toggle | toggle expand): key(ctrl-m ctrl-m)
(collapse all | fold toggle all): key(ctrl-m ctrl-l)
(collapse | fold) definitions: key(ctrl-m ctrl-o)

#Debugging
build solution: key(ctrl-shift-b)
build project: key(ctrl-b)
start application: key(ctrl-f5)
(reset code | stop application): key(shift-f5)
(start debugging | debug application): key(f5)
show code places:
    key(ctrl-alt-shift-h)
    sleep(100ms)
    key(ctrl-alt-shift-z)
list members: key(ctrl-j)
break point: key(f9)
debug step into: key(f11)
debug start: key(f5)
debug stopper: key(shift-f5)
debug continue: key(f5)

# findinghing the code
(hunt next | find next): key(f3)
(hunt last | find last): key(shift-f3)
find following [<user.text>]:
    key(ctrl-f)
    sleep(100ms)
    insert(text or "")
    key(escape)
#navigation
(go line | go to line): key(ctrl-g)
go [to line] <user.number_string>:
    key(ctrl-g)
    sleep(100ms)
    insert(number_string)
    key(enter)
navigate: key(ctrl-,)
code search: key(ctrl-,)
navigate <user.text>:
    key(ctrl-,)
    sleep(100ms)
    insert(text or "")
#DevExpress CodeRush jump codes/Marker functionality
jump [codes]: key(ctrl-shift-j)
land [carrot]: key(enter)
[select] token: key(shift-enter)
right [side]: key(alt-enter)
[in] brackets: key(ctrl-enter)
hover token: key(ctrl-space)
collect marker: key(alt-end)
drop marker: key(alt-home)
swap marker: key(alt-shift-home)
#DevExpress CodeRush jump codes functionality end
(quick actions | open smart tag): key(ctrl-.)
search code: key(ctrl-f)
search code [<user.text>]:
    key(ctrl-f)
    sleep(100ms)
    insert(text or "")
    key(escape)
find again: key(f3)
(next | following) issue: key(alt-pagedown)
(last | previous) issue: key(alt-pageup)
parameter info: key(ctrl-shift-space)
show error [list]: key(ctrl-\ ctrl-e)
expand selection: key(alt-shift-=)
shrink selection: key(alt-shift--)
go to view: key(ctrl-m ctrl-g)
(hunt this | search code): key(ctrl-f)
format document: key(ctrl-k ctrl-d)
format code: key(ctrl-k ctrl-e)
format selection: key(ctrl-k ctrl-f)
next method: key(ctrl-shift-m)
previous method: key(ctrl-shift-alt-m)
move [the] line up:
    key(ctrl-f1 ctrl-f2)
move [the] line down:
    key(ctrl-f1 ctrl-f4)
commit changes: key(ctrl-alt-f7)
commit and sink:
    key(ctrl-alt-shift-k)
    sleep(100ms)
    key(ctrl-alt-shift-m)
show navigation menu: key(alt-')
quick watch: key(shift-f9)
ask copilot [<user.text>]:
    key(alt-/)
    sleep(100ms)
    insert(text or "")
rename token: key(ctrl-r ctrl-r)
rename token [<user.text>]:
    key(ctrl-r ctrl-r)
    sleep(100ms)
    insert(text or "")
    key(enter)
run test: key(ctrl-t ctrl-r)
debug test: key(ctrl-t ctrl-d)
copilot create unit test:
    key(alt-/)
    insert("create a unittest for this method using XUnit")
    key(enter)
apply code changes | hot reload:
    key(ctrl-shift-s)
    key(alt-f10)
step into: key(f11)
step out: key(shift-f11)
step across:
    key(f10)
    sleep(100ms)
step over: key(f10)
(reset code | stop debugging): key(shift-f5)
continue: key(f5)
toggle breakpoint: key(f9)
delete [all] breakpoints: key(ctrl-shift-f9)
copilot chat:
    key(ctrl-q)
    sleep(100ms)
    insert("GitHub copilot chat")
    sleep(100ms)
    key(enter)
copy with quick watch:
    key(menu)
    sleep(100ms)
    key(q)
    sleep(100ms)
    key(alt-v)
    sleep(100ms)
    key(menu)
    sleep(100ms)
    key(v)
zoom in: key(ctrl-shift->)
zoom out: key(ctrl-shift-<)
select matching <number_small>:
    key(shift-alt-.)
    repeat(number_small-1)
select matching next: key(shift-alt-.)
select matching all: key(shift-alt-;)
previous tab:
    key(alt-w)
    sleep(100ms)
    key(2)
(view code | view page | view component): key(f7)
(begin comment | start comment): insert("// ")
visual studio clipboard: key(ctrl-shift-insert)
jump to symbol [<user.text>]:
    key(ctrl-shift-q)
    sleep(100ms)
    insert(text or "")
close message:
    mouse_move(1665, 80)
    mouse_click(0)
#surround with:              key(ctrl-k ctrl-s)
add property:
    insert("prop")
    key(tab)
    key(tab)
add existing item: key(shift-alt-a)
surround with:
    key(ctrl-k ctrl-s)
    sleep(100ms)
    insert("v")
    key(enter)
# Use code rush voice commands
command:
    speech.disable()
    key(lctrl:down)
dictation:
    speech.disable()
    key(rctrl:down)
if statement:
    insert("if")
    sleep(100ms)
    key(ctrl-j)
    sleep(100ms)
    key(tab tab)
# deck(pedal_left): 
#     user.pedal_left()
#     speech.toggle()
# deck(pedal_right): 
#     user.pedal_right()
#     speech.toggle()
