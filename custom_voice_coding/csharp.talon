os: windows
code.language: csharp
app: vscode
app: visual studio
#force code.language: csharp
-

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
where clause:
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
arrow operator:             insert(" => ")
lambda operator <user.letter>:
    insert(letter)
    sleep(100ms)
    insert(" => " + letter)
    sleep(100ms)
funk contains:
    insert('.Contains("")')
    sleep(100ms)
    key(left left)
    sleep(100ms)
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
for each loop:
    insert("foreach")
    sleep(100ms)
    key(ctrl-j)
    sleep(100ms)
    key(tab tab)
not equal empty:            insert(" != null ")
to upper:                   insert(".ToUpper()")
generic list:
    insert("List<>")
    key(left)
    sleep(100ms)
    insert("string")
    key(shift-ctrl-left)
