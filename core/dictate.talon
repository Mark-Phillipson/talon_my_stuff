os: windows
-
dictate:
    user.ensure_vscode_running()
    sleep(900ms)
    user.vscode("welcome.showNewFileEntries")
    sleep(200ms)
    key(enter)
    sleep(200ms)
    key(enter)
    sleep(200ms)
    user.copilot_chat("")
