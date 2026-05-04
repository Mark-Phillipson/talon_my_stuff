# Claude Desktop - Windows
# Save to: %APPDATA%\Talon\user\claude_desktop.talon
#
# To find your exact app name, open the Talon REPL and run: ui.apps()
# Common values for Claude Desktop on Windows: "Claude" or "claude.exe"

app.name: Claude
-

# --- New conversation & navigation ---
new chat: key(ctrl-n)
search chats: key(ctrl-k)
next chat: key(ctrl-tab)
previous chat: key(ctrl-shift-tab)

# --- Sending & editing ---
send message: key(enter)
new line: key(shift-enter)
stop generation: key(escape)
edit last [message]: key(up)

# --- Text formatting (in message input) ---
bold that: key(ctrl-b)
italic that: key(ctrl-i)
inline code: key(ctrl-e)
strikethrough: key(ctrl-shift-s)

# --- App controls ---
open settings: key(ctrl-comma)
toggle sidebar: key(ctrl-shift-s)
quick access: key(ctrl-shift-space)
reload app: key(ctrl-r)

# --- Dictation helpers ---
# Say "ask claude" followed by your question to type it and send
ask claude <user.text>:
    insert(user.text)
    key(enter)

# Type a message without sending (useful for review before sending)
type message <user.text>: insert(user.text)
