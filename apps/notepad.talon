app: notepad
-

tag(): user.tabs
tag(): user.find_and_replace

pilot rewrite: key(ctrl-d)
pilot summarize: key(ctrl-m)
take [all]: key(ctrl-a)
chuck line: 
    key(home)
    sleep(30ms)
    key(shift-end)
    sleep(30ms)
    key(delete)