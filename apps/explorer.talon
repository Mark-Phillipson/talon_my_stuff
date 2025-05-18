app: windows_explorer
app: windows_file_browser
app: explorer.exe
-
tag(): user.file_manager
go local documents: user.file_manager_open_directory("C:\\Users\\MPhil\\Documents")
go downloads: user.file_manager_open_directory("C:\\Users\\MPhil\\Downloads")
go pictures: user.file_manager_open_directory("C:\\Users\\MPhil\\OneDrive\\Pictures")
go one drive documents: user.file_manager_open_directory("C:\\Users\\MPhil\\OneDrive\\Documents")
snip folder local documents: insert("C:\\Users\\MPhil\\Documents")
snip folder downloads: insert("C:\\Users\\MPhil\\Downloads")
snip folder pictures: insert("C:\\Users\\MPhil\\OneDrive\\Pictures")
snip folder one drive documents: insert("C:\\Users\\MPhil\\OneDrive\\Documents")
snip folder desktop: insert("C:\\Users\\MPhil\\Desktop")
snip folder desktop pictures: insert("C:\\DesktopPictures")
snip folder repose: insert("C:\Users\MPhil\source\repos")
open in terminal:
    key(alt-f)
    sleep(400ms)
    key(t)
open in code:
    key(alt-f)
    sleep(400ms)
    key(i)
copy path: key(ctrl-shift-c)
touch top file:
    # Touch the top file in the explorer on monitor two only
    mouse_move(2220, 145)
    mouse_click(0)
# Talon script for File Explorer shortcuts

# Select the search box
search box:
    key(ctrl-e)

# Open a new window
new window:
    key(ctrl-n)

# Close the current window
close window:
    key(ctrl-w)

# Display all folders above the selected folder
show parent folders:
    key(ctrl-shift-e)

# Create a new folder
new folder:
    key(ctrl-shift-n)

# Display all sub-folders under the selected folder
show sub folders:
    key(num_lock-*)

# Display the contents of the selected folder
expand folder:
    key(num_lock-+)

# Collapse the selected folder
collapse folder:
    key(num_lock--)

# Display the preview pane
preview pane:
    key(alt-p)

# Open the Properties dialog box for the selected item
properties:
    key(alt-enter)

# View the next folder
next folder:
    key(alt-right)

# View the folder that the folder was in
parent folder:
    key(alt-up)

# View the previous folder
previous folder:
    key(alt-left)

# View the previous folder (alternative)
go back:
    key(backspace)

# Display the current selection (if it’s collapsed), or select the first sub-folder
expand selection:
    key(right)

# Collapse the current selection (if it’s expanded), or select the folder that the folder was in
collapse selection:
    key(left)

# Display the bottom of the active window
bottom of window:
    key(end)

# Display the top of the active window
top of window:
    key(home)

# Maximize or minimize the active window
toggle maximize:
    key(f11)
