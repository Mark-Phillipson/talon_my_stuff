app: vscode
-
(closed tab | close tab) : user.vscode("workbench.action.closeActiveEditor")
focus open [files | tab]: user.vscode("workbench.files.action.focusOpenEditorsView")
command [palette]: user.vscode("workbench.action.showCommands")
search files [by name] :  
    user.vscode("workbench.action.showCommands")
    key(left)    
    key(delete)
expand selection: user.vscode("editor.action.smartSelect.expand")
shrink selection: user.vscode("editor.action.smartSelect.shrink")
rename [file] : key(f2)
select matching all: user.vscode("editor.action.selectHighlights")
select matching <user.number_signed_small>: 
    user.vscode("editor.action.addSelectionToNextFindMatch")
    repeat(number_signed_small-1)
select matching next: user.vscode("editor.action.addSelectionToNextFindMatch")
save as: user.vscode("workbench.action.files.saveAs")
format code: user.vscode("editor.action.formatDocument")
new file: user.vscode("explorer.newFile")
previous tab: user.vscode("workbench.action.previousEditor")
next tab: user.vscode("workbench.action.nextEditor")
switch files: user.vscode("workbench.action.quickOpenPreviousRecentlyUsedEditor")
ide navigate: key(alt-f7)
focus editor: user.vscode("workbench.action.focusActiveEditorGroup")
toggle hats: user.vscode("cursorless.toggleDecorations")
maximize editor : 
    key(f1)
    sleep(100ms)
    insert("View: Toggle Primary Sidebar Visibility")
    key(enter)
solution explorer: user.vscode("solutionExplorer.focus")    
debug application: user.vscode("workbench.action.debug.start")
start application: user.vscode("workbench.action.debug.run")
stop application: user.vscode("workbench.action.debug.stop")
step over: user.vscode("workbench.action.debug.stepOver")
step into: user.vscode("workbench.action.debug.stepInto")
step out: user.vscode("workbench.action.debug.stepOut")
continue: user.vscode("workbench.action.debug.continue")
restart: user.vscode("workbench.action.debug.restart")
toggle breakpoint: user.vscode("editor.debug.action.toggleBreakpoint")
run test: user.vscode("dotnet.test.run")
open folder: user.vscode("workbench.action.files.openFolder")
parameter info: user.vscode("editor.action.triggerParameterHints")
edge search:
    user.vscode("editor.action.selectAll")
    user.vscode("editor.action.clipboardCopyAction")
    clipboard=clip.text()
    user.switcher_focus("msedge.exe") 
    key(ctrl-t)
    sleep(900ms)
    sleep(100ms)
    insert(clipboard)
    sleep(100ms)
    key(enter)
ask copilot: key(ctrl-i)
toggle sidebar: user.vscode("workbench.action.toggleSidebarVisibility") 
set selection: user.vscode("editor.action.setSelectionAnchor")
get selection: user.vscode("editor.action.goToSelectionAnchor")
[go to] definition: user.vscode("editor.action.revealDefinition")
focus problems: user.vscode("workbench.panel.markers.view.focus")
(terminal focus) | (focus terminal): user.vscode("workbench.panel.terminal.focus")
focus search: user.vscode("workbench.view.search")
focus extensions: user.vscode("workbench.view.extensions")
focus explorer: user.vscode("workbench.view.explorer")
focus debug: user.vscode("workbench.view.debug")
focus source control: user.vscode("workbench.view.scm")
open talon log:
    user.vscode("workbench.action.files.openFile")
    sleep(100ms)
    insert("C:\\Users\\MPhil\\AppData\\Roaming\\talon\\talon.log")
    sleep(100ms)
    key(enter)
next issue: user.vscode("editor.action.marker.next")
previous issue: user.vscode("editor.action.marker.prev")
keyboard shortcuts: user.vscode("workbench.action.openGlobalKeybindings")
view Controller: user.vscode("extension.goToController")
go to view: user.vscode("extension.goToView")
view code: user.vscode("extension.goToCodeBehind")
view component: user.vscode("extension.goToBlazorComponent")
Go to next bookmark: user.vscode("editor.action.goToNextBookmark")
open smart tag: user.vscode("editor.action.quickFix")
symbol rename: user.vscode("editor.action.rename")
list members: user.vscode("editor.action.triggerSuggest")
duplicate line: user.vscode("editor.action.copyLinesDownAction")
last position: user.vscode("workbench.action.navigateToLastEditLocation")
last edit: user.vscode("workbench.action.navigateBackInEditLocations")
next edit: user.vscode("workbench.action.navigateForwardInEditLocations")
search code: user.vscode("actions.find")
show code places: user.vscode("workbench.action.gotoSymbol")
Toggle bookmark one: user.vscode("numberedBookmarks.toggleBookmark1")
Toggle bookmark two: user.vscode("numberedBookmarks.toggleBookmark2")
Toggle bookmark three: user.vscode("numberedBookmarks.toggleBookmark3")
go bookmark one: user.vscode("numberedBookmarks.jumpToBookmark1")
go bookmark two: user.vscode("numberedBookmarks.jumpToBookmark2")
go bookmark three: user.vscode("numberedBookmarks.jumpToBookmark3")
if statement: 
    user.vscode("editor.action.insertSnippet")
    sleep(100ms)
    insert("if")
    key(enter)
move line down: user.vscode("editor.action.moveLinesDownAction")
move line up: user.vscode("editor.action.moveLinesUpAction")
comment line: user.vscode("editor.action.commentLine")
view problem: user.vscode("editor.action.marker.next")
find next [<user.text>]: 
    key(ctrl-f)
    sleep(100ms)
    insert(text or "")
toggle panel:   user.vscode("workbench.action.togglePanel")