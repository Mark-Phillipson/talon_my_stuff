app: vscode
-
# Navigation

solution explorer: user.vscode("solutionExplorer.focus")
symbols: user.vscode("workbench.action.showAllSymbols")
[go to] definition: user.vscode("editor.action.revealDefinition")
[focus] problems: user.vscode("workbench.panel.markers.view.focus")
(terminal focus) | (focus terminal): user.vscode("workbench.action.terminal.focus")
focus search: user.vscode("workbench.view.search")
focus extensions: user.vscode("workbench.view.extensions")
focus explorer: user.vscode("workbench.view.explorer")
focus debug: user.vscode("workbench.view.debug")
[focus] source control: user.vscode("workbench.view.scm")
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
[go] implementation: user.vscode("editor.action.goToImplementation")
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
#File Management

(search files [by name]) | (navigate [to]):
    user.vscode("workbench.action.showCommands")
    key(left)
    key(delete)
search files <user.cursorless_target>:
    value = user.cursorless_get_text(cursorless_target, true)
    user.vscode("workbench.action.showCommands")
    key(left)
    key(delete)
    insert(value)
search files [<user.text>]:
    user.vscode("workbench.action.showCommands")
    key(left)
    key(delete)
    insert(text)
open folder: user.vscode("workbench.action.files.openFolder")
save as: user.vscode("workbench.action.files.saveAs")
focus open [files | tab]: user.vscode("workbench.files.action.focusOpenEditorsView")
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

# Manipulate Code

focus editor: user.vscode("workbench.action.focusActiveEditorGroup")
format code: user.vscode("editor.action.formatDocument")
expand selection: user.vscode("editor.action.smartSelect.expand")
shrink selection: user.vscode("editor.action.smartSelect.shrink")
comment line: user.vscode("editor.action.commentLine")
parameter info: user.vscode("editor.action.triggerParameterHints")
symbol rename: user.vscode("editor.action.rename")

#Tab Management

previous tab: user.vscode("workbench.action.previousEditor")
next tab: user.vscode("workbench.action.nextEditor")
(closed tab | close tab): user.vscode("workbench.action.closeActiveEditor")
maximize editor:
    key(f1)
    sleep(100ms)
    insert("View: Toggle Primary Sidebar Visibility")
    key(enter)
ide navigate: key(alt-f7)
sidebar narrow: user.vscode("workbench.action.increaseViewWidth")
sidebar widen: user.vscode("workbench.action.decreaseViewWidth")
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
step over: user.vscode("workbench.action.debug.stepOver")
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

run test: user.vscode("dotnet.test.run")
cancel test run: key("ctrl-; ctrl-x")

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
toggle panel: user.vscode("workbench.action.togglePanel")
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

#terminal

terminal: user.vscode("workbench.action.createTerminalEditor")
terminal history: user.vscode("workbench.action.terminal.runRecentCommand")

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

pilot new chat:
    user.copilot_chat("")
    sleep(100ms)
    key(ctrl-l)
pilot ask: key(ctrl-i)
pilot toggle: user.vscode("github.copilot.toggleCopilot")
pilot accept [word]: key(ctrl-right)
pilot edit: user.vscode("workbench.action.chat.openEditSession")
pilot chat workspace:
    user.copilot_chat("")
    sleep(300ms)
    insert("@workspace ")
pilot chat file:
    user.copilot_chat("")
    sleep(300ms)
    insert("#f")
pilot chat fix error: user.copilot_chat("#selection How can I /fix this error")

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
