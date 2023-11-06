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
select matching <user.number_signed_small> :
        key( shift-alt-.)
        repeat(number_signed_small-1)
select matching: key( shift-alt-.)    
select matching all: key(shift-alt-;)
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
       