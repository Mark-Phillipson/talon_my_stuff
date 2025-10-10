app: vscode
os: windows
-
# Navigation

switch tab: user.vscode("workbench.action.switchWindow")
single tab: user.vscode("workbench.action.showEditorTab")
multi tabs: user.vscode("workbench.action.showMultipleEditorTabs")
solution explorer: user.vscode("solutionExplorer.focus")
symbols: user.vscode("workbench.action.showAllSymbols")
[go to] definition: user.vscode("editor.action.revealDefinition")
[focus] problems: user.vscode("workbench.panel.markers.view.focus")
maximize (panel | pane): user.vscode("workbench.action.toggleMaximizedPanel")
(terminal focus) | (focus terminal): user.vscode("workbench.action.terminal.focus")
terminal build:
    user.vscode("workbench.action.terminal.focus")
    sleep(100ms)
    insert("dotnet build")
    sleep(100ms)
    key(enter)
terminal run:
    user.vscode("workbench.action.terminal.focus")
    sleep(100ms)
    insert("dotnet run")
    sleep(100ms)
    key(enter)
terminal watch:
    user.vscode("workbench.action.terminal.focus")
    sleep(100ms)
    insert("dotnet watch run")
    sleep(100ms)
    key(enter)    
local host Marvin: user.open_url("http://localhost:5016")
#My SelectionSaver Extension
drop marker: user.vscode("selectionssaver.saveBookmark")
collect marker: user.vscode("selectionssaver.restoreBookmark")
save swap marker: user.vscode("selectionssaver.saveSelectionToSwapSlot")
swap marker: user.vscode("selectionssaver.swapWithSwapSlot")

focus search: user.vscode("workbench.view.search")
focus extensions: user.vscode("workbench.view.extensions")
focus explorer: user.vscode("workbench.view.explorer")
focus debug: user.vscode("workbench.view.debug")
[focus] source control: user.vscode("workbench.view.scm")
[focus] commit message: user.vscode("workbench.scm.action.focusNextInput")
next issue: user.vscode("editor.action.marker.next")
previous issue: user.vscode("editor.action.marker.prev")
(focus) | (view) Controller: user.vscode("extension.goToController")
go to view: user.vscode("extension.goToView")
(view code) | (code behind): user.vscode("extension.goToCodeBehind")
[view] component: user.vscode("extension.goToBlazorComponent")
Go to next bookmark: user.vscode("editor.action.goToNextBookmark")
open smart tag: user.vscode("editor.action.quickFix")
last edit: user.vscode("workbench.action.navigateToLastEditLocation")
previous edit: user.vscode("workbench.action.navigateBackInEditLocations")
next edit: user.vscode("workbench.action.navigateForwardInEditLocations")
(show code places) | symbol: user.vscode("workbench.action.gotoSymbol")
move line down: user.vscode("editor.action.moveLinesDownAction")
move line up: user.vscode("editor.action.moveLinesUpAction")
view problem: user.vscode("editor.action.marker.next")
bar connections: user.vscode("dataExplorer.servers.focus")
bar notebooks: user.vscode("workbench.view.notebooks")
go method: user.vscode("semantic-movement.jumpToContainingFunction")
last position: user.vscode("workbench.action.navigateBack")
breadcrumbs focus: user.vscode("breadcrumbs.focus")
show code lens: user.vscode("codelens.showLensesInCurrentLine")
keyboard shortcuts: user.vscode("workbench.action.openGlobalKeybindings")
focus editors: user.vscode("workbench.files.action.focusOpenEditorsView")

#Multiple Cursors

select matching all: user.vscode("editor.action.selectHighlights")
select matching <user.number_signed_small>:
    user.vscode("editor.action.addSelectionToNextFindMatch")
    repeat(number_signed_small-1)
select matching next: user.vscode("editor.action.addSelectionToNextFindMatch")
select matching previous: user.vscode("editor.action.addSelectionToPreviousFindMatch")

#File Management

collapse folders: user.vscode("workbench.files.action.collapseExplorerFolders")
(search files [by name]) | (navigate [to]):
    user.vscode("workbench.action.quickOpen")
(hunt | search | find) this: edit.find()
search files <user.cursorless_target>:
    value = user.cursorless_get_text(cursorless_target, true)
    user.vscode("workbench.action.quickOpen")
    insert(value)
search files [<user.text>]:
    user.vscode("workbench.action.quickOpen")
    insert(text)
open folder: user.vscode("workbench.action.files.openFolder")
file save as: user.vscode("workbench.action.files.saveAs")
file save all: user.vscode("workbench.action.files.saveAll")
focus open [files | tab]: user.vscode("workbench.files.action.focusOpenEditorsView")
close others: user.vscode("workbench.action.closeOtherEditors")
rename [file]: key(f2)
new file here: user.vscode("fileutils.newFile")
new folder: user.vscode("explorer.newFolder")
switch files: user.vscode("workbench.action.quickOpenPreviousRecentlyUsedEditor")
new file:
    #user.vscode("csdevkit.addNewFile")
    key(menu)
    sleep(100ms)
    key(down)
please dotnet:
    key(f1)
    sleep(300ms)
    insert(".NET")
    sleep(100ms)
    key(enter)
go [command] palette:
    key(ctrl-shift-p)
palate | palette: key(ctrl-shift-p)
open recent: user.vscode("workbench.action.openRecent")    

# Manipulate Code

format code: user.vscode("editor.action.formatDocument")
expand selection: user.vscode("editor.action.smartSelect.expand")
shrink selection: user.vscode("editor.action.smartSelect.shrink")
comment line: user.vscode("editor.action.commentLine")
parameter info: user.vscode("editor.action.triggerParameterHints")
symbol rename: user.vscode("editor.action.rename")
drop anchor: user.vscode("editor.action.setSelectionAnchor")
collect anchor: user.vscode("editor.action.goToSelectionAnchor")
select from anchor: user.vscode("editor.action.selectFromAnchorToCursor")
open accessible view: user.vscode("editor.action.accessibleView")
#Tab Management
previous tab: user.vscode("workbench.action.previousEditor")
next tab: user.vscode("workbench.action.nextEditor")
(closed tab | close tab): user.vscode("workbench.action.closeActiveEditor")
maximize editor:
    key(f1)
    sleep(100ms)
    insert("View: Toggle Primary Sidebar Visibility")
    key(enter)
sidebar shrink: user.vscode("workbench.action.increaseViewWidth")
sidebar grow: user.vscode("workbench.action.decreaseViewWidth")
split grow: user.vscode("workbench.action.increaseViewSize")
split shrink: user.vscode("workbench.action.decreaseViewSize")    

zoom in small:
    key(ctrl:down)
    user.mouse_scroll_up()
    key(ctrl:up)
zoom out small:
    key(ctrl:down)
    user.mouse_scroll_down()
    key(ctrl:up)
toggle secondary: user.vscode("workbench.action.closeAuxiliaryBar")

# Cursorless

put <user.cursorless_target>:
    value = user.cursorless_get_text(cursorless_target, true)
    insert(value)

toggle hats: user.vscode("cursorless.toggleDecorations")
<user.formatters> {user.cursorless_reformat_action} <user.cursorless_target>:
    user.private_cursorless_reformat(cursorless_target, formatters)
{user.search_engine} scout <user.cursorless_target>:
    text = user.cursorless_get_text(cursorless_target)
    user.search_with_search_engine(search_engine, text)

#Debugging

debug application: user.vscode("workbench.action.debug.start")
start application: user.vscode("workbench.action.debug.run")
stop application: user.vscode("workbench.action.debug.stop")
step into: user.vscode("workbench.action.debug.stepInto")
step out: user.vscode("workbench.action.debug.stepOut")
continue: user.vscode("workbench.action.debug.continue")
restart (debugging): user.vscode("workbench.action.debug.restart")
toggle breakpoint: user.vscode("editor.debug.action.toggleBreakpoint")
bar debug: user.vscode("workbench.view.debug")
open talon log:
    user.vscode("workbench.action.files.openFile")
    sleep(400ms)
    insert("C:\\Users\\MPhil\\AppData\\Roaming\\talon\\talon.log")
    sleep(100ms)
    key(enter)
reset code: user.vscode("workbench.action.debug.stop")

#Testing

test stop: key("ctrl-; ctrl-x")
test reload: key("ctrl-; ctrl-r")

#Search

edge search:
    user.vscode("editor.action.selectAll")
    user.vscode("editor.action.clipboardCopyAction")
    clipboard = clip.text()
    #clipboard = user.replaced_text(clipboard, " ", "+")
    user.switcher_focus("msedge.exe")
    key(ctrl-t)
    sleep(600ms)
    insert(clipboard)
    sleep(100ms)
    key(enter)
find next [<user.text>]:
    key(ctrl-f)
    sleep(100ms)
    insert(text or "")

#Selection

set selection: user.vscode("editor.action.setSelectionAnchor")
get selection: user.vscode("editor.action.goToSelectionAnchor")
cursor up: user.vscode("editor.action.insertCursorAbove")
cursor down: user.vscode("editor.action.insertCursorBelow")
list members: user.vscode("editor.action.triggerSuggest")
duplicate line: user.vscode("editor.action.copyLinesDownAction")
search code: user.vscode("actions.find")

#bookmarks

Toggle bookmark one: user.vscode("numberedBookmarks.toggleBookmark1")
Toggle bookmark two: user.vscode("numberedBookmarks.toggleBookmark2")
Toggle bookmark three: user.vscode("numberedBookmarks.toggleBookmark3")
go bookmark one: user.vscode("numberedBookmarks.jumpToBookmark1")
go bookmark two: user.vscode("numberedBookmarks.jumpToBookmark2")
go bookmark three: user.vscode("numberedBookmarks.jumpToBookmark3")

#Snippets

if statement:
    user.vscode("editor.action.insertSnippet")
    sleep(100ms)
    insert("if")
    key(enter)

#Panels
toggle sidebar: user.vscode("workbench.action.toggleSidebarVisibility")
toggle (panel | pain): user.vscode("workbench.action.togglePanel")
toggle zen mode: user.vscode("workbench.action.toggleZenMode")

# MS SQL Server Extension
execute query: user.vscode("mssql.runQuery")
object explorer focus: user.vscode("objectExplorer.focus")
query history: user.vscode("queryHistory.focus")
connections: user.vscode("workbench.view.connections")

copy code link:
    user.vscode("gitlens.copyDeepLinkToLines")
# code link <user.ordinals_small> [and <user.ordinals_small>]*:
#     #Will only be the first option first second third 4th 5th 6th 7th etc and gitlens will have to be installed
#     user.switcher_focus("msedge.exe")
#     key(ctrl-t)
#     sleep(900ms)
#     user.clipboard_manager_paste(ordinals_small_list)
#     sleep(100ms)
#     key(enter)

take all: key(ctrl-a)
#to do tasks extension
(new task) | (checkbox): key(ctrl-enter)
complete task: key(alt-d)

#terminal (integrated)

terminal in editor: user.vscode("workbench.action.createTerminalEditor")
terminal history: user.vscode("workbench.action.terminal.runRecentCommand")
terminal recent commands: user.vscode("workbench.action.terminal.runRecentCommand")
terminal recent directory: user.vscode("workbench.action.terminal.goToRecentDirectory")
terminal previous: user.vscode("workbench.action.terminal.focusPrevious")
terminal next: user.vscode("workbench.action.terminal.focusNext")

#Emmet
remove tag: user.vscode("editor.emmet.action.removeTag")
update tag: user.vscode("editor.emmet.action.updateTag")
take tag: user.vscode("editor.emmet.action.balanceOut")
take next: user.vscode("editor.emmet.action.selectNextItem")
take previous: user.vscode("editor.emmet.action.selectPrevItem")
wrap with abbreviation: user.vscode("editor.emmet.action.wrapWithAbbreviation")
expand abbreviation: user.vscode("editor.emmet.action.expandAbbreviation")
balance (inward): user.vscode("editor.emmet.action.balanceIn")
balance (outward): user.vscode("editor.emmet.action.balanceOut")
toggle close tag: user.vscode("editor.emmet.action.splitJoinTag")
merge lines: user.vscode("editor.emmet.action.mergeLines")
toggle comment: user.vscode("editor.emmet.action.toggleComment")

#copilot

context last:
    key(ctrl-/)
    sleep(200ms)
    insert("tools")
    sleep(100ms)
    key(enter)
    insert("last")
    sleep(100ms)
    key(enter)
pilot continue: key(ctrl-enter)
pilot inline: key(ctrl-i)
pilot completions: user.vscode("github.copilot.completions.toggle")
pilot new chat:
    user.copilot_chat("")
    sleep(100ms)
    key(ctrl-l)
pilot ask: key(ctrl-i)
pilot toggle: user.vscode("github.copilot.toggleCopilot")
pilot accept [word]: key(ctrl-right)
pilot edits: user.vscode("workbench.action.chat.openEditSession")
pilot chat workspace:
    user.copilot_chat("")
    sleep(300ms)
    insert("@workspace ")
pilot chat file:
    user.copilot_chat("")
    sleep(300ms)
    insert("#f")
pilot chat fix error: user.copilot_chat("#selection How can I /fix this error")
pilot list commands: 
    key(ctrl-shift-p)
    sleep(100ms)
    insert("GitHub Copilot: ")
pilot voice: 
    user.vscode("workbench.action.chat.startVoiceChat")    
    speech.disable()
#add context: user.vscode("workbench.action.chat.editing.attachContext")
pilot next edit: user.vscode("chatEditor.action.navigateNext")
pilot previous edit: user.vscode("chatEditor.action.navigatePrevious")
pilot fix errors:
    key(ctrl-/)
    sleep(200ms)
    insert("tools")
    sleep(200ms)
    key(enter)
    sleep(200ms)
    insert("last")
    sleep(200ms)
    key(enter)
    sleep(300ms)
    insert("Please can you look at the LAST terminal command and fix these errors for me?")
pilot fix warnings:
    key(ctrl-/)
    sleep(300ms)
    insert("tools")
    sleep(300ms)
    key(enter)
    sleep(300ms)
    insert("last")
    sleep(300ms)
    key(enter)
    sleep(300ms)
    insert("Please can you look at the last terminal command and fix these warnings for me?")
add context: key(ctrl-/)
pick model: key(ctrl-alt-.)
set mode: key(ctrl-.)
select tools: key(ctrl-shift-/)
draft this:
    key(ctrl-a)
    sleep(60ms)
    key(ctrl-c)
    sleep(60ms)
    user.vscode("welcome.showNewFileEntries")
    sleep(60ms)
    key(enter)
    sleep(60ms)
    key(ctrl-v)
fix errors: 
    insert("Please Fix All Build Errors and Warnings!")    
    sleep(100ms)
    key(enter)
stop the agent: 
    mouse_move(1872, 980)
    mouse_click(0)

run prompt [in] new [pilot]:
    #key(ctrl-alt-super-/)
    user.vscode("workbench.action.chat.run-in-new-chat.prompt.current")

run prompt [in] [pilot]:
    key(alt-super-/)

#Rainbow CSV
CSV filter: user.vscode("rainbow-csv.RBQL")
#Markdown All in One Extension
toggle bold: user.vscode("markdown.extension.editing.toggleBold")
toggle code block: user.vscode("markdown.extension.editing.toggleCodeBlock")
toggle italic: user.vscode("markdown.extension.editing.toggleItalic")
toggle list: user.vscode("markdown.extension.editing.toggleList")
toggle strikethrough: user.vscode("markdown.extension.editing.toggleStrikethrough")
table of contents: user.vscode("markdown.extension.toc.create")
markdown preview: user.vscode("markdown.showPreview")
toggle task: user.vscode("markdown.extension.checkTaskList")
copy Github link: user.vscode("issue.copyGithubPermalink")

#Error Lens Extension
error lens toggle: user.vscode("errorLens.toggle")
#C# Dev Kit
explorer build:
    user.vscode("solutionExplorer.focus")
    sleep(100ms)
    key(menu)
    sleep(100ms)
    key(down:7)
explorer debug:
    user.vscode("solutionExplorer.focus")
    sleep(100ms)
    key(menu)
    sleep(100ms)
    key(up:1)
    sleep(100ms)
    key(right)
#T4 Templates
T4 for inject:
    insert("<#= #>")
    key(left:2)
make code bigger: user.vscode("editor.action.fontZoomIn")
make code smaller: user.vscode("editor.action.fontZoomOut")
zoom in: user.vscode("workbench.action.zoomIn")
zoom out: user.vscode("workbench.action.zoomOut")

keep changes: key(ctrl-enter)
send to pilot:
    key(shift-home)
    sleep(30ms)
    key(shift-right)
    sleep(30ms)
    key(ctrl-x)
    sleep(30ms)
    key(escape)
    sleep(30ms)
    insert("please ")
    sleep(30ms)
    key(ctrl-v)

pilot window toggle: user.vscode("workbench.action.toggleMaximizedAuxiliaryBar")
(panel | terminal | pane | pain) window toggle: user.vscode("workbench.action.toggleMaximizedPanel")
natural [language] [commands]: 
    key(f1)
    sleep(30ms)
    insert("NLC: ")
