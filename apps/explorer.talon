app: windows_explorer
app: windows_file_browser
app: explorer.exe
-
tag(): user.file_manager
go local documents: user.file_manager_open_directory("C:\\Users\\MPhil\\Documents")
go downloads: user.file_manager_open_directory("C:\\Users\\MPhil\\Downloads")
go pictures: user.file_manager_open_directory("C:\\Users\\MPhil\\OneDrive\\Pictures")
go one drive documents: user.file_manager_open_directory("C:\\Users\\MPhil\\OneDrive\\Documents")
open in terminal:
    key(alt-f)
    sleep(400ms)
    key(t)
open in code:
    key(alt-f)
    sleep(400ms)
    key(i)
copy path: key(ctrl-shift-c)
