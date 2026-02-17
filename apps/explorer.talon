app: windows_file_browser
app: explorer.exe

-

tag(): user.file_manager
go local documents: user.file_manager_open_directory("C:\\Users\\MPhil\\Documents")
go downloads: user.file_manager_open_directory("C:\\Users\\MPhil\\Downloads")
go pictures: user.file_manager_open_directory("C:\\Users\\MPhil\\OneDrive\\Pictures")
go one drive documents: user.file_manager_open_directory("C:\\Users\\MPhil\\OneDrive\\Documents")
copy the path: key(ctrl-shift-c)
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
open in Visual Studio code:
    # Copy current path from Explorer address bar
    key(f4)
    key(ctrl-c)
    key(escape)
    path = clip.text()
    user.open_path_in_code(path)
click new:
    user.mouse_helper_position_save()
    user.mouse_helper_move_image_relative("2026-02-17_16.05.30.811152.png", 0)
    sleep(0.05)
    mouse_click(0)
    sleep(0.05)
    user.mouse_helper_position_restore()
click cut:
    user.mouse_helper_position_save()
    user.mouse_helper_move_image_relative("2026-02-17_16.07.47.118069.png", 0)
    sleep(0.05)
    mouse_click(0)
    sleep(0.05)
    user.mouse_helper_position_restore()
click copy:
    user.mouse_helper_position_save()
    user.mouse_helper_move_image_relative("2026-02-17_16.09.48.396713.png", 0)
    sleep(0.05)
    mouse_click(0)
    sleep(0.05)
    user.mouse_helper_position_restore()
click paste:
    user.mouse_helper_position_save()
    user.mouse_helper_move_image_relative("2026-02-17_16.11.32.095554.png", 0)
    sleep(0.05)
    mouse_click(0)
    sleep(0.05)
    user.mouse_helper_position_restore()
click rename:
    user.mouse_helper_position_save()
    user.mouse_helper_move_image_relative("2026-02-17_16.13.35.129573.png", 0)
    sleep(0.05)
    mouse_click(0)
    sleep(0.05)
    user.mouse_helper_position_restore()
click share:
    user.mouse_helper_position_save()
    user.mouse_helper_move_image_relative("2026-02-17_16.15.32.123799.png", 0)
    sleep(0.05)
    mouse_click(0)
    sleep(0.05)
    user.mouse_helper_position_restore()
click delete:
    user.mouse_helper_position_save()
    user.mouse_helper_move_image_relative("2026-02-17_16.16.41.082767.png", 0)
    sleep(0.05)
    mouse_click(0)
    sleep(0.05)
    user.mouse_helper_position_restore()
click sort:
    user.mouse_helper_position_save()
    user.mouse_helper_move_image_relative("2026-02-17_16.17.56.646825.png", 0)
    sleep(0.05)
    mouse_click(0)
    sleep(0.05)
    user.mouse_helper_position_restore()
click view:
    user.mouse_helper_position_save()
    user.mouse_helper_move_image_relative("2026-02-17_16.19.38.327672.png", 0)
    sleep(0.05)
    mouse_click(0)
    sleep(0.05)
    user.mouse_helper_position_restore()
click more:
    user.mouse_helper_position_save()
    user.mouse_helper_move_image_relative("2026-02-17_16.20.58.451876.png", 0)
    sleep(0.05)
    mouse_click(0)
    sleep(0.05)
    user.mouse_helper_position_restore()
click refresh:
    user.mouse_helper_position_save()
    user.mouse_helper_move_image_relative("2026-02-17_16.22.17.782710.png", 0)
    sleep(0.05)
    mouse_click(0)
    sleep(0.05)
    user.mouse_helper_position_restore()
click up arrow:
    user.mouse_helper_position_save()
    user.mouse_helper_move_image_relative("2026-02-17_16.23.28.015349.png", 0)
    sleep(0.05)
    mouse_click(0)
    sleep(0.05)
    user.mouse_helper_position_restore()
click left arrow:
    user.mouse_helper_position_save()
    user.mouse_helper_move_image_relative("2026-02-17_16.24.54.798019.png", 0)
    sleep(0.05)
    mouse_click(0)
    sleep(0.05)
    user.mouse_helper_position_restore()
click thumbnails:
    user.mouse_helper_position_save()
    user.mouse_helper_move_image_relative("2026-02-17_16.33.28.051339.png", 0)
    sleep(0.05)
    mouse_click(0)
    sleep(0.05)
    user.mouse_helper_position_restore()
click details:
    user.mouse_helper_position_save()
    user.mouse_helper_move_image_relative("2026-02-17_16.29.09.121833.png", 0)
    sleep(0.05)
    mouse_click(0)
    sleep(0.05)
    user.mouse_helper_position_restore()
click preview:
    user.mouse_helper_position_save()
    user.mouse_helper_move_image_relative("2026-02-17_16.39.13.436115.png", 0)
    sleep(0.05)
    mouse_click(0)
    sleep(0.05)
    user.mouse_helper_position_restore()
click search:
    user.mouse_helper_position_save()
    user.mouse_helper_move_image_relative("2026-02-17_16.40.57.150302.png", 0)
    sleep(0.05)
    mouse_click(0)
    sleep(0.05)
    user.mouse_helper_position_restore()
