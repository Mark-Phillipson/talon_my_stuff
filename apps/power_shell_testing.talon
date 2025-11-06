app.exe: powershell.exe
-
list directories:
    insert("Get-ChildItem -Directory")
    sleep(100ms)
    key(enter)
