sharp <user.text>:
    user.run_application_csharp_database_command(text)    
(ad tag) | (add tag) <user.text>:
    user.run_application_csharp_database_command("add tag " + text)
fresh line : 
    key(end)
    key(enter)
fresh line above: 
    key(home)
    key(home)
    key(enter)        
    key(up)
left select: key( ctrl-shift-left)
right select: key( ctrl-shift-right)
<number_small> items:
    key(shift-down)
    repeat(number_small-1)
left <number_small> items :
    key(shift-left)
    repeat(number_small-1)
right <number_small> items :
    key(shift-right)
    repeat(number_small-1)        
move down <number_small> :
    key(down)
    repeat(number_small-1)            
move up <number_small> :
    key(up)
    repeat(number_small-1)                            
move left <number_small> :
    key(left)
    repeat(number_small-1)                            
move right <number_small> :
    key(right)
    repeat(number_small-1)                                
search list <user.text>:
    user.run_application_search_intellisense(text)
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
order by: 
    insert('.OrderBy(x => x)')
    sleep(100ms)
    key(left)
    sleep(100ms)
    insert('.')
order by descending:
    insert('.OrderByDescending(x => x)')
    sleep(100ms)
    key(left)    
    sleep(100ms)
    insert('.')
group by: 
    insert('.GroupBy(x => x)')
    sleep(100ms)
    key(left)
    sleep(100ms)
    insert('.')    
where [clause]:
    insert('.Where(x => x)')
    sleep(100ms)
    key(left)
    sleep(100ms)
    insert('.')    
first or default:
    insert('.FirstOrDefault()')
    sleep(100ms)
    key(left)
first or default async:
    insert('.FirstOrDefaultAsync()')
    sleep(100ms)
    key(left)
arrow operator: insert(" => ")    
lambda operator <user.text>:
    insert(text)
    sleep(100ms)
    insert(" => " + text)
    sleep(100ms)
    key(left)
to string    :
    insert('.ToString()')
    sleep(100ms)
    key(left)
contains:
    insert('.Contains("")')
    sleep(100ms)
    key(left left)
    sleep(100ms)
to lower    :
    insert('.ToLower()')
to list: insert(".ToList()")
to array: insert(".ToArray()")
to dictionary: insert(".ToDictionary()")
sub string: 
    insert(".Substring()")
    sleep(100ms)
    key(left)
then by: 
    insert('.ThenBy(x => x)')
    sleep(100ms)
    key(left)
    sleep(100ms)
    insert('.')
then by descending:
    insert('.ThenByDescending(x => x)')
    sleep(100ms)
    key(left)    
    sleep(100ms)
    insert('.')    
if statement: 
    insert("if")
    sleep(100ms)
    key(ctrl-j)
    sleep(100ms)
    key(tab tab)
if statement razor: 
    insert("@if (true) { }")
    sleep(100ms)
    key(escape)
    sleep(100ms)
    key(left left left left left)
    key(shift-ctrl-left)
for each loop: 
    insert("foreach")
    sleep(100ms)
    key(ctrl-j)
    sleep(100ms)
    key(tab tab)
not equal empty: insert(" != null ")
to upper: insert(".ToUpper()")
build like <user.text>:
    clause=" LIKE '%{text}%'"
    insert(clause)
generic list: 
    insert("List<>()")    
    key(left left left)
    sleep(100ms)
    insert("string")
    key(shift-ctrl-left)