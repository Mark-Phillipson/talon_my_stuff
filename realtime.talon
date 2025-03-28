mode: sleep
app: microsoft_edge
-

^(stop realtime)+$:
    speech.enable()
    sleep(100ms)
    key(alt-m)
^(stop realtime and copy)+$:
    speech.enable()
    sleep(100ms)
    key(alt-m)
    sleep(100ms)
    key(alt-t)
    sleep(100ms)
    key(ctrl-a)
    sleep(100ms)
    key(ctrl-c)
^(stop realtime and paste)+$:
    speech.enable()
    sleep(100ms)
    key(alt-m)
    sleep(100ms)
    key(alt-t)
    sleep(100ms)
    key(ctrl-a)
    key(ctrl-c)
    sleep(100ms)
    key(alt-tab)        
    sleep(100ms)
    key(ctrl-v)