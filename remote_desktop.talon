app: mstsc.exe
-

task manager: key(ctrl-alt-end)
connection bar: key(ctrl-alt-home)
window mode: 
    key(ctrl-alt-home)
    key(tab)
    repeat(2)
minimize remote window:
        key(ctrl-alt-home)
        key(tab)
        repeat(1)
connect: key(alt-n)
disconnect: 
    key(ctrl-alt-home)
    key(tab)
    repeat(3)
#this is not working when in window mode
system menu: 
    key(ctrl-alt-home)