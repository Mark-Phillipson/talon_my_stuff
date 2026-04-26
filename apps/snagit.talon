os: windows
and app.name: Snagit Editor
os: windows
and app.exe: snagiteditor.exe
-

[new] from clipboard: key(ctrl-shift-n)

# copy all:
#     key(ctrl-shift-c)
#     print("Snagit: Copied to clipboard")
save as: key(ctrl-shift-s)
save as temporary:
    key(ctrl-shift-s)
    sleep(500ms)
    insert("TemporaryScreenshot")
    sleep(300ms)
    key(enter)
