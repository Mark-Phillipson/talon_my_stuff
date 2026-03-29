app: microsoft_edge
#title: /chatgpt|chat gpt/i
-

new chat: key(ctrl-shift-o)

focus input: key(shift-esc)

ask it | basket:
    insert("?")
    sleep("20ms")
    key(enter)
use dictate:
    speech.disable()
    mouse_click()
use voice:
    speech.disable()
    mouse_click()
