app: windowsterminal.exe
app: devenv.exe
app: vscode
app: c:\windows\system32\cmd.exe
-
# Copilot CLI (aka copilot commandline) voice commands
# These are defined globally so they can be spoken from any application.

# generic invocation: anything after the keyword is passed straight through
copilot [<user.text>]:
    insert("copilot " + text)
    sleep(30ms)
    key(enter)

# alternate trigger using the CLI name explicitly
copilot CLI [<user.text>]:
    insert("copilot " + text)
    sleep(30ms)
    key(enter)

# some common subcommands
copilot init:
    insert("copilot init")
    sleep(30ms)
    key(enter)

copilot status:
    insert("copilot status")
    sleep(30ms)
    key(enter)

copilot banner:
    insert("copilot --banner")
    sleep(30ms)
    key(enter)

# edit the current line using the CLI (voice equivalent of `copilot edit`)
copilot edit line:
    insert("copilot edit")
    sleep(30ms)
    key(enter)

# line editing shortcuts that match what the CLI help shows
copilot line start:
    key(ctrl-a)

copilot line end:
    key(ctrl-e)

copilot delete to start:
    key(ctrl-u)

copilot delete to end:
    key(ctrl-k)

copilot word right:
    key(alt-right)
