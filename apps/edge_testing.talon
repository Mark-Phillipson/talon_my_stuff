app: microsoft_edge
-
tag(): browser
tag(): user.tabs

test customer: 
    key(alt-m)
    sleep(100ms)
    insert("Cu")
    sleep(100ms)
    insert("st")
    sleep(500ms)
    key(tab)
    sleep(600ms)
    key(enter)
