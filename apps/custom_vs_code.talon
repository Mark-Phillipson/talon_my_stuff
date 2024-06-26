app: vscode
-
(closed tab | close tab):   user.vscode("workbench.action.closeActiveEditor")
focus open [files | tab]:   user.vscode("workbench.files.action.focusOpenEditorsView")
command [palette]:          user.vscode("workbench.action.showCommands")
(search files [by name]) | (navigate [to]):
    user.vscode("workbench.action.showCommands")
    key(left)
    key(delete)
expand selection:           user.vscode("editor.action.smartSelect.expand")
shrink selection:           user.vscode("editor.action.smartSelect.shrink")
rename [file]:              key(f2)
select matching all:        user.vscode("editor.action.selectHighlights")
select matching <user.number_signed_small>:
    user.vscode("editor.action.addSelectionToNextFindMatch")
    repeat(number_signed_small-1)
select matching next:       user.vscode("editor.action.addSelectionToNextFindMatch")
save as:                    user.vscode("workbench.action.files.saveAs")
format code:                user.vscode("editor.action.formatDocument")
new file:                   user.vscode("explorer.newFile")
new file here:              user.vscode("fileutils.newFile")
new folder:                 user.vscode("explorer.newFolder")
previous tab:               user.vscode("workbench.action.previousEditor")
next tab:                   user.vscode("workbench.action.nextEditor")
switch files:               user.vscode("workbench.action.quickOpenPreviousRecentlyUsedEditor")
ide navigate:               key(alt-f7)
focus editor:               user.vscode("workbench.action.focusActiveEditorGroup")
toggle hats:                user.vscode("cursorless.toggleDecorations")
maximize editor:
    key(f1)
    sleep(100ms)
    insert("View: Toggle Primary Sidebar Visibility")
    key(enter)
solution explorer:          user.vscode("solutionExplorer.focus")
debug application:          user.vscode("workbench.action.debug.start")
start application:          user.vscode("workbench.action.debug.run")
stop application:           user.vscode("workbench.action.debug.stop")
step over:                  user.vscode("workbench.action.debug.stepOver")
step into:                  user.vscode("workbench.action.debug.stepInto")
step out:                   user.vscode("workbench.action.debug.stepOut")
continue:                   user.vscode("workbench.action.debug.continue")
restart:                    user.vscode("workbench.action.debug.restart")
toggle breakpoint:          user.vscode("editor.debug.action.toggleBreakpoint")
run test:                   user.vscode("dotnet.test.run")
open folder:                user.vscode("workbench.action.files.openFolder")
parameter info:             user.vscode("editor.action.triggerParameterHints")
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
ask copilot:                key(ctrl-i)
toggle sidebar:             user.vscode("workbench.action.toggleSidebarVisibility")
set selection:              user.vscode("editor.action.setSelectionAnchor")
get selection:              user.vscode("editor.action.goToSelectionAnchor")
[go to] definition:         user.vscode("editor.action.revealDefinition")
focus problems:             user.vscode("workbench.panel.markers.view.focus")
(terminal focus) | (focus terminal): user.vscode("workbench.action.terminal.focus")
focus search:               user.vscode("workbench.view.search")
focus extensions:           user.vscode("workbench.view.extensions")
focus explorer:             user.vscode("workbench.view.explorer")
focus debug:                user.vscode("workbench.view.debug")
focus source control:       user.vscode("workbench.view.scm")
open talon log:
    user.vscode("workbench.action.files.openFile")
    sleep(400ms)
    insert("C:\\Users\\MPhil\\AppData\\Roaming\\talon\\talon.log")
    sleep(100ms)
    key(enter)
next issue:                 user.vscode("editor.action.marker.next")
previous issue:             user.vscode("editor.action.marker.prev")
keyboard shortcuts:         user.vscode("workbench.action.openGlobalKeybindings")
(focus) | (view) Controller: user.vscode("extension.goToController")
go to view:                 user.vscode("extension.goToView")
(view code) | (code behind): user.vscode("extension.goToCodeBehind")
#[focus] | [view] component: user.vscode("extension.goToBlazorComponent")
[view] component:           user.vscode("extension.goToBlazorComponent")
Go to next bookmark:        user.vscode("editor.action.goToNextBookmark")
open smart tag:             user.vscode("editor.action.quickFix")
symbol rename:              user.vscode("editor.action.rename")
list members:               user.vscode("editor.action.triggerSuggest")
duplicate line:             user.vscode("editor.action.copyLinesDownAction")
last edit:                  user.vscode("workbench.action.navigateToLastEditLocation")
previous edit:              user.vscode("workbench.action.navigateBackInEditLocations")
next edit:                  user.vscode("workbench.action.navigateForwardInEditLocations")
search code:                user.vscode("actions.find")
show code places:           user.vscode("workbench.action.gotoSymbol")
Toggle bookmark one:        user.vscode("numberedBookmarks.toggleBookmark1")
Toggle bookmark two:        user.vscode("numberedBookmarks.toggleBookmark2")
Toggle bookmark three:      user.vscode("numberedBookmarks.toggleBookmark3")
go bookmark one:            user.vscode("numberedBookmarks.jumpToBookmark1")
go bookmark two:            user.vscode("numberedBookmarks.jumpToBookmark2")
go bookmark three:          user.vscode("numberedBookmarks.jumpToBookmark3")
if statement:
    user.vscode("editor.action.insertSnippet")
    sleep(100ms)
    insert("if")
    key(enter)
move line down:             user.vscode("editor.action.moveLinesDownAction")
move line up:               user.vscode("editor.action.moveLinesUpAction")
comment line:               user.vscode("editor.action.commentLine")
view problem:               user.vscode("editor.action.marker.next")
find next [<user.text>]:
    key(ctrl-f)
    sleep(100ms)
    insert(text or "")
toggle panel:               user.vscode("workbench.action.togglePanel")
toggle zen mode:            user.vscode("workbench.action.toggleZenMode")
restart debugging:          user.vscode("workbench.action.debug.restart")
accept [word]:              key(ctrl-right)
bar connections:            user.vscode("dataExplorer.servers.focus")
bar notebooks:              user.vscode("workbench.view.notebooks")
go method:                  user.vscode("semantic-movement.jumpToContainingFunction")
[go] implementation:        user.vscode("editor.action.goToImplementation")
last position:              user.vscode("workbench.action.navigateBack")
breadcrumbs focus:          user.vscode("breadcrumbs.focus")
show code lens:             user.vscode("codelens.showLensesInCurrentLine")
cancel test run:            key("ctrl-; ctrl-x")
tab by hint:                user.vscode("andreas.focusTab")
execute query:              user.vscode("mssql.runQuery")
object explorer focus:      user.vscode("objectExplorer.focus")
query history:              user.vscode("queryHistory.focus")
connections:                user.vscode("workbench.view.connections")
<user.formatters> {user.cursorless_reformat_action} <user.cursorless_target>:
    user.private_cursorless_reformat(cursorless_target, formatters)
toggle pilot:               user.vscode("github.copilot.toggleCopilot")
copy code link:
    user.vscode("gitlens.copyDeepLinkToLines")
code link <user.ordinals_small> [and <user.ordinals_small>]*:
    #Will only be the first option first second third 4th 5th 6th 7th etc and gitlens will have to be installed
    user.switcher_focus("msedge.exe")
    key(ctrl-t)
    sleep(900ms)
    user.clipboard_manager_paste(ordinals_small_list)
    sleep(100ms)
    key(enter)
reset code:                 user.vscode("workbench.action.debug.stop")
please dotnet:  key(f1)
                sleep(300ms)
                insert(".NET")
                sleep(100ms)
                key(enter)
terminal history:           user.vscode("workbench.action.terminal.runRecentCommand")                