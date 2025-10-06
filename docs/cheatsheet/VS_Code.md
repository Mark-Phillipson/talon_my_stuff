# Talon Cheatsheet — VS Code

Command | Action | Source
--- | --- | ---
(checkbox) | key(ctrl-enter) | apps/custom_visual_studio_code.talon
(closed tab | user.vscode("workbench.action.closeActiveEditor") | apps/custom_visual_studio_code.talon
(code behind) | user.vscode("extension.goToCodeBehind") | apps/custom_visual_studio_code.talon
(focus terminal) | user.vscode("workbench.action.terminal.focus") | apps/custom_visual_studio_code.talon
(focus) | user.vscode("extension.goToController") | apps/custom_visual_studio_code.talon
(hunt | edit.find() | apps/custom_visual_studio_code.talon
(navigate [to]) | user.vscode("workbench.action.quickOpen") | apps/custom_visual_studio_code.talon
(new task) | key(ctrl-enter) | apps/custom_visual_studio_code.talon
(search files [by name]) | user.vscode("workbench.action.quickOpen") | apps/custom_visual_studio_code.talon
(show code places) | user.vscode("workbench.action.gotoSymbol") | apps/custom_visual_studio_code.talon
(terminal focus) | user.vscode("workbench.action.terminal.focus") | apps/custom_visual_studio_code.talon
(view code) | user.vscode("extension.goToCodeBehind") | apps/custom_visual_studio_code.talon
(view) Controller | user.vscode("extension.goToController") | apps/custom_visual_studio_code.talon
<user.formatters> {user.cursorless_reformat_action} <user.cursorless_target> | user.private_cursorless_reformat(cursorless_target, formatters) | apps/custom_visual_studio_code.talon
[focus] commit message | user.vscode("workbench.scm.action.focusNextInput") | apps/custom_visual_studio_code.talon
[focus] problems | user.vscode("workbench.panel.markers.view.focus") | apps/custom_visual_studio_code.talon
[focus] source control | user.vscode("workbench.view.scm") | apps/custom_visual_studio_code.talon
[go to] definition | user.vscode("editor.action.revealDefinition") | apps/custom_visual_studio_code.talon
[view] component | user.vscode("extension.goToBlazorComponent") | apps/custom_visual_studio_code.talon
add context | key(ctrl-/) | apps/custom_visual_studio_code.talon
app | vscode | visual_studio_code_sleeping.talon
app | vscode | apps/custom_visual_studio_code.talon
app | VS Code Insiders | apps/visual_studio_code_insiders.talon
app | vscode | custom_voice_coding/csharp.talon
app | devenv.exe | custom_voice_coding/csharp.talon
app | visual_studio_code | apps/visual_studio_code/visual_studio_code.talon
arrow operator | insert(" => ") | custom_voice_coding/csharp.talon
balance (inward) | user.vscode("editor.emmet.action.balanceIn") | apps/custom_visual_studio_code.talon
balance (outward) | user.vscode("editor.emmet.action.balanceOut") | apps/custom_visual_studio_code.talon
bar connections | user.vscode("dataExplorer.servers.focus") | apps/custom_visual_studio_code.talon
bar debug | user.vscode("workbench.view.debug") | apps/custom_visual_studio_code.talon
bar notebooks | user.vscode("workbench.view.notebooks") | apps/custom_visual_studio_code.talon
breadcrumbs focus | user.vscode("breadcrumbs.focus") | apps/custom_visual_studio_code.talon
close others | user.vscode("workbench.action.closeOtherEditors") | apps/custom_visual_studio_code.talon
close tab) | user.vscode("workbench.action.closeActiveEditor") | apps/custom_visual_studio_code.talon
collapse folders | user.vscode("workbench.files.action.collapseExplorerFolders") | apps/custom_visual_studio_code.talon
collect anchor | user.vscode("editor.action.goToSelectionAnchor") | apps/custom_visual_studio_code.talon
collect marker | user.vscode("selectionssaver.restoreBookmark") | apps/custom_visual_studio_code.talon
comment line | user.vscode("editor.action.commentLine") | apps/custom_visual_studio_code.talon
complete task | key(alt-d) | apps/custom_visual_studio_code.talon
connections | user.vscode("workbench.view.connections") | apps/custom_visual_studio_code.talon
context last | key(ctrl-/) ⏎     sleep(200ms) ⏎     insert("tools") ⏎     sleep(100ms) ⏎     key(enter) ⏎     insert("last") ⏎     sleep(100ms) ⏎     key(enter) | apps/custom_visual_studio_code.talon
continue | user.vscode("workbench.action.debug.continue") | apps/custom_visual_studio_code.talon
copy code link | user.vscode("gitlens.copyDeepLinkToLines") | apps/custom_visual_studio_code.talon
copy Github link | user.vscode("issue.copyGithubPermalink") | apps/custom_visual_studio_code.talon
CSV filter | user.vscode("rainbow-csv.RBQL") | apps/custom_visual_studio_code.talon
cursor down | user.vscode("editor.action.insertCursorBelow") | apps/custom_visual_studio_code.talon
cursor up | user.vscode("editor.action.insertCursorAbove") | apps/custom_visual_studio_code.talon
debug application | user.vscode("workbench.action.debug.start") | apps/custom_visual_studio_code.talon
draft this | key(ctrl-a) ⏎     sleep(60ms) ⏎     key(ctrl-c) ⏎     sleep(60ms) ⏎     user.vscode("welcome.showNewFileEntries") ⏎     sleep(60ms) ⏎     key(enter) ⏎     sleep(60ms) ⏎     key(ctrl-v) | apps/custom_visual_studio_code.talon
drop anchor | user.vscode("editor.action.setSelectionAnchor") | apps/custom_visual_studio_code.talon
drop marker | user.vscode("selectionssaver.saveBookmark") | apps/custom_visual_studio_code.talon
duplicate line | user.vscode("editor.action.copyLinesDownAction") | apps/custom_visual_studio_code.talon
edge search | user.vscode("editor.action.selectAll") ⏎     user.vscode("editor.action.clipboardCopyAction") ⏎     clipboard = clip.text() ⏎     #clipboard = user.replaced_text(clipboard, " ", "+") ⏎     user.switcher_focus("msedge.exe") ⏎     key(ctrl-t) ⏎     sleep(600ms) ⏎     insert(clipboard) ⏎     sleep(100ms) ⏎     key(enter) | apps/custom_visual_studio_code.talon
error lens toggle | user.vscode("errorLens.toggle") | apps/custom_visual_studio_code.talon
execute query | user.vscode("mssql.runQuery") | apps/custom_visual_studio_code.talon
expand abbreviation | user.vscode("editor.emmet.action.expandAbbreviation") | apps/custom_visual_studio_code.talon
expand selection | user.vscode("editor.action.smartSelect.expand") | apps/custom_visual_studio_code.talon
explorer build | user.vscode("solutionExplorer.focus") ⏎     sleep(100ms) ⏎     key(menu) ⏎     sleep(100ms) ⏎     key(down:7) | apps/custom_visual_studio_code.talon
explorer debug | user.vscode("solutionExplorer.focus") ⏎     sleep(100ms) ⏎     key(menu) ⏎     sleep(100ms) ⏎     key(up:1) ⏎     sleep(100ms) ⏎     key(right) | apps/custom_visual_studio_code.talon
file save all | user.vscode("workbench.action.files.saveAll") | apps/custom_visual_studio_code.talon
file save as | user.vscode("workbench.action.files.saveAs") | apps/custom_visual_studio_code.talon
find next [<user.text>] | key(ctrl-f) ⏎     sleep(100ms) ⏎     insert(text or "") | apps/custom_visual_studio_code.talon
find) this | edit.find() | apps/custom_visual_studio_code.talon
first or default | insert('.FirstOrDefault()') ⏎     sleep(100ms) ⏎     key(left) | custom_voice_coding/csharp.talon
first or default async | insert('.FirstOrDefaultAsync()') ⏎     sleep(100ms) ⏎     key(left) | custom_voice_coding/csharp.talon
fix errors | insert("Please Fix All Build Errors and Warnings!") ⏎     sleep(100ms) ⏎     key(enter) | apps/custom_visual_studio_code.talon
focus debug | user.vscode("workbench.view.debug") | apps/custom_visual_studio_code.talon
focus editors | user.vscode("workbench.files.action.focusOpenEditorsView") | apps/custom_visual_studio_code.talon
focus explorer | user.vscode("workbench.view.explorer") | apps/custom_visual_studio_code.talon
focus extensions | user.vscode("workbench.view.extensions") | apps/custom_visual_studio_code.talon
focus open [files | user.vscode("workbench.files.action.focusOpenEditorsView") | apps/custom_visual_studio_code.talon
focus search | user.vscode("workbench.view.search") | apps/custom_visual_studio_code.talon
for each loop | insert("foreach") ⏎     sleep(100ms) ⏎     key(ctrl-j) ⏎     sleep(100ms) ⏎     key(tab tab) | custom_voice_coding/csharp.talon
format code | user.vscode("editor.action.formatDocument") | apps/custom_visual_studio_code.talon
funk contains | insert('.Contains("")') ⏎     sleep(100ms) ⏎     key(left left) ⏎     sleep(100ms) | custom_voice_coding/csharp.talon
generic list | insert("List<>") ⏎     key(left) ⏎     sleep(100ms) ⏎     insert("string") ⏎     key(shift-ctrl-left) | custom_voice_coding/csharp.talon
get selection | user.vscode("editor.action.goToSelectionAnchor") | apps/custom_visual_studio_code.talon
go [command] palette | key(ctrl-shift-p) | apps/custom_visual_studio_code.talon
go bookmark one | user.vscode("numberedBookmarks.jumpToBookmark1") | apps/custom_visual_studio_code.talon
go bookmark three | user.vscode("numberedBookmarks.jumpToBookmark3") | apps/custom_visual_studio_code.talon
go bookmark two | user.vscode("numberedBookmarks.jumpToBookmark2") | apps/custom_visual_studio_code.talon
go method | user.vscode("semantic-movement.jumpToContainingFunction") | apps/custom_visual_studio_code.talon
Go to next bookmark | user.vscode("editor.action.goToNextBookmark") | apps/custom_visual_studio_code.talon
go to view | user.vscode("extension.goToView") | apps/custom_visual_studio_code.talon
group by | insert('.GroupBy(x => x)') ⏎     sleep(100ms) ⏎     key(left) ⏎     sleep(100ms) ⏎     insert('.') | custom_voice_coding/csharp.talon
if statement | user.vscode("editor.action.insertSnippet") ⏎     sleep(100ms) ⏎     insert("if") ⏎     key(enter) | apps/custom_visual_studio_code.talon
keep changes | key(ctrl-enter) | apps/custom_visual_studio_code.talon
keyboard shortcuts | user.vscode("workbench.action.openGlobalKeybindings") | apps/custom_visual_studio_code.talon
lambda operator <user.letter> | insert(letter) ⏎     sleep(100ms) ⏎     insert(" => " + letter) ⏎     sleep(100ms) | custom_voice_coding/csharp.talon
last edit | user.vscode("workbench.action.navigateToLastEditLocation") | apps/custom_visual_studio_code.talon
last position | user.vscode("workbench.action.navigateBack") | apps/custom_visual_studio_code.talon
list members | user.vscode("editor.action.triggerSuggest") | apps/custom_visual_studio_code.talon
local host Marvin | user.open_url("http://localhost:5016") | apps/custom_visual_studio_code.talon
make code bigger | user.vscode("editor.action.fontZoomIn") | apps/custom_visual_studio_code.talon
make code smaller | user.vscode("editor.action.fontZoomOut") | apps/custom_visual_studio_code.talon
markdown preview | user.vscode("markdown.showPreview") | apps/custom_visual_studio_code.talon
maximize (panel | user.vscode("workbench.action.toggleMaximizedPanel") | apps/custom_visual_studio_code.talon
maximize editor | key(f1) ⏎     sleep(100ms) ⏎     insert("View: Toggle Primary Sidebar Visibility") ⏎     key(enter) | apps/custom_visual_studio_code.talon
merge lines | user.vscode("editor.emmet.action.mergeLines") | apps/custom_visual_studio_code.talon
mode | sleep | visual_studio_code_sleeping.talon
move line down | user.vscode("editor.action.moveLinesDownAction") | apps/custom_visual_studio_code.talon
move line up | user.vscode("editor.action.moveLinesUpAction") | apps/custom_visual_studio_code.talon
multi tabs | user.vscode("workbench.action.showMultipleEditorTabs") | apps/custom_visual_studio_code.talon
new file | #user.vscode("csdevkit.addNewFile") ⏎     key(menu) ⏎     sleep(100ms) ⏎     key(down) | apps/custom_visual_studio_code.talon
new file here | user.vscode("fileutils.newFile") | apps/custom_visual_studio_code.talon
new folder | user.vscode("explorer.newFolder") | apps/custom_visual_studio_code.talon
next edit | user.vscode("workbench.action.navigateForwardInEditLocations") | apps/custom_visual_studio_code.talon
next issue | user.vscode("editor.action.marker.next") | apps/custom_visual_studio_code.talon
next tab | user.vscode("workbench.action.nextEditor") | apps/custom_visual_studio_code.talon
not equal empty | insert(" != null ") | custom_voice_coding/csharp.talon
object explorer focus | user.vscode("objectExplorer.focus") | apps/custom_visual_studio_code.talon
open accessible view | user.vscode("editor.action.accessibleView") | apps/custom_visual_studio_code.talon
open folder | user.vscode("workbench.action.files.openFolder") | apps/custom_visual_studio_code.talon
open recent | user.vscode("workbench.action.openRecent") | apps/custom_visual_studio_code.talon
open smart tag | user.vscode("editor.action.quickFix") | apps/custom_visual_studio_code.talon
open talon log | user.vscode("workbench.action.files.openFile") ⏎     sleep(400ms) ⏎     insert("C:\\Users\\MPhil\\AppData\\Roaming\\talon\\talon.log") ⏎     sleep(100ms) ⏎     key(enter) | apps/custom_visual_studio_code.talon
order by | insert('.OrderBy(x => x)') ⏎     sleep(100ms) ⏎     key(left) ⏎     sleep(100ms) ⏎     insert('.') | custom_voice_coding/csharp.talon
order by descending | insert('.OrderByDescending(x => x)') ⏎     sleep(100ms) ⏎     key(left) ⏎     sleep(100ms) ⏎     insert('.') | custom_voice_coding/csharp.talon
os | windows | apps/custom_visual_studio_code.talon
pain) | user.vscode("workbench.action.togglePanel") | apps/custom_visual_studio_code.talon
palate | key(ctrl-shift-p) | apps/custom_visual_studio_code.talon
palette | key(ctrl-shift-p) | apps/custom_visual_studio_code.talon
pane) | user.vscode("workbench.action.toggleMaximizedPanel") | apps/custom_visual_studio_code.talon
parameter info | user.vscode("editor.action.triggerParameterHints") | apps/custom_visual_studio_code.talon
pick model | key(ctrl-alt-.) | apps/custom_visual_studio_code.talon
pilot accept [word] | key(ctrl-right) | apps/custom_visual_studio_code.talon
pilot ask | key(ctrl-i) | apps/custom_visual_studio_code.talon
pilot chat file | user.copilot_chat("") ⏎     sleep(300ms) ⏎     insert("#f") | apps/custom_visual_studio_code.talon
pilot chat fix error | user.copilot_chat("#selection How can I /fix this error") | apps/custom_visual_studio_code.talon
pilot chat workspace | user.copilot_chat("") ⏎     sleep(300ms) ⏎     insert("@workspace ") | apps/custom_visual_studio_code.talon
pilot completions | user.vscode("github.copilot.completions.toggle") | apps/custom_visual_studio_code.talon
pilot continue | key(ctrl-enter) | apps/custom_visual_studio_code.talon
pilot edits | user.vscode("workbench.action.chat.openEditSession") | apps/custom_visual_studio_code.talon
pilot fix errors | key(ctrl-/) ⏎     sleep(200ms) ⏎     insert("tools") ⏎     sleep(200ms) ⏎     key(enter) ⏎     sleep(200ms) ⏎     insert("last") ⏎     sleep(200ms) ⏎     key(enter) ⏎     sleep(300ms) ⏎     insert("Please can you look at the LAST terminal command and fix these errors for me?") | apps/custom_visual_studio_code.talon
pilot fix warnings | key(ctrl-/) ⏎     sleep(300ms) ⏎     insert("tools") ⏎     sleep(300ms) ⏎     key(enter) ⏎     sleep(300ms) ⏎     insert("last") ⏎     sleep(300ms) ⏎     key(enter) ⏎     sleep(300ms) ⏎     insert("Please can you look at the last terminal command and fix these warnings for me?") | apps/custom_visual_studio_code.talon
pilot inline | key(ctrl-i) | apps/custom_visual_studio_code.talon
pilot list commands | key(ctrl-shift-p) ⏎     sleep(100ms) ⏎     insert("GitHub Copilot: ") | apps/custom_visual_studio_code.talon
pilot new chat | user.copilot_chat("") ⏎     sleep(100ms) ⏎     key(ctrl-l) | apps/custom_visual_studio_code.talon
pilot next edit | user.vscode("chatEditor.action.navigateNext") | apps/custom_visual_studio_code.talon
pilot previous edit | user.vscode("chatEditor.action.navigatePrevious") | apps/custom_visual_studio_code.talon
pilot toggle | user.vscode("github.copilot.toggleCopilot") | apps/custom_visual_studio_code.talon
pilot voice | user.vscode("workbench.action.chat.startVoiceChat") | visual_studio_code_sleeping.talon
pilot voice | user.vscode("workbench.action.chat.startVoiceChat") ⏎     speech.disable() | apps/custom_visual_studio_code.talon
pilot window toggle | user.vscode("workbench.action.toggleMaximizedAuxiliaryBar") | apps/custom_visual_studio_code.talon
please dotnet | key(f1) ⏎     sleep(300ms) ⏎     insert(".NET") ⏎     sleep(100ms) ⏎     key(enter) | apps/custom_visual_studio_code.talon
previous edit | user.vscode("workbench.action.navigateBackInEditLocations") | apps/custom_visual_studio_code.talon
previous issue | user.vscode("editor.action.marker.prev") | apps/custom_visual_studio_code.talon
previous tab | user.vscode("workbench.action.previousEditor") | apps/custom_visual_studio_code.talon
put <user.cursorless_target> | value = user.cursorless_get_text(cursorless_target, true) ⏎     insert(value) | apps/custom_visual_studio_code.talon
query history | user.vscode("queryHistory.focus") | apps/custom_visual_studio_code.talon
remove tag | user.vscode("editor.emmet.action.removeTag") | apps/custom_visual_studio_code.talon
rename [file] | key(f2) | apps/custom_visual_studio_code.talon
reset code | user.vscode("workbench.action.debug.stop") | apps/custom_visual_studio_code.talon
restart (debugging) | user.vscode("workbench.action.debug.restart") | apps/custom_visual_studio_code.talon
run prompt [in] [pilot] | key(alt-super-/) | apps/custom_visual_studio_code.talon
run prompt [in] new [pilot] | #key(ctrl-alt-super-/) ⏎     user.vscode("workbench.action.chat.run-in-new-chat.prompt.current") | apps/custom_visual_studio_code.talon
save swap marker | user.vscode("selectionssaver.saveSelectionToSwapSlot") | apps/custom_visual_studio_code.talon
search | edit.find() | apps/custom_visual_studio_code.talon
search code | user.vscode("actions.find") | apps/custom_visual_studio_code.talon
search files <user.cursorless_target> | value = user.cursorless_get_text(cursorless_target, true) ⏎     user.vscode("workbench.action.quickOpen") ⏎     insert(value) | apps/custom_visual_studio_code.talon
search files [<user.text>] | user.vscode("workbench.action.quickOpen") ⏎     insert(text) | apps/custom_visual_studio_code.talon
select from anchor | user.vscode("editor.action.selectFromAnchorToCursor") | apps/custom_visual_studio_code.talon
select matching <user.number_signed_small> | user.vscode("editor.action.addSelectionToNextFindMatch") ⏎     repeat(number_signed_small-1) | apps/custom_visual_studio_code.talon
select matching all | user.vscode("editor.action.selectHighlights") | apps/custom_visual_studio_code.talon
select matching next | user.vscode("editor.action.addSelectionToNextFindMatch") | apps/custom_visual_studio_code.talon
select matching previous | user.vscode("editor.action.addSelectionToPreviousFindMatch") | apps/custom_visual_studio_code.talon
select tools | key(ctrl-shift-/) | apps/custom_visual_studio_code.talon
send to pilot | key(shift-home) ⏎     sleep(30ms) ⏎     key(shift-right) ⏎     sleep(30ms) ⏎     key(ctrl-x) ⏎     sleep(30ms) ⏎     key(escape) ⏎     sleep(30ms) ⏎     insert("please ") ⏎     sleep(30ms) ⏎     key(ctrl-v) | apps/custom_visual_studio_code.talon
set mode | key(ctrl-.) | apps/custom_visual_studio_code.talon
set selection | user.vscode("editor.action.setSelectionAnchor") | apps/custom_visual_studio_code.talon
show code lens | user.vscode("codelens.showLensesInCurrentLine") | apps/custom_visual_studio_code.talon
shrink selection | user.vscode("editor.action.smartSelect.shrink") | apps/custom_visual_studio_code.talon
sidebar grow | user.vscode("workbench.action.decreaseViewWidth") | apps/custom_visual_studio_code.talon
sidebar shrink | user.vscode("workbench.action.increaseViewWidth") | apps/custom_visual_studio_code.talon
single tab | user.vscode("workbench.action.showEditorTab") | apps/custom_visual_studio_code.talon
solution explorer | user.vscode("solutionExplorer.focus") | apps/custom_visual_studio_code.talon
split grow | user.vscode("workbench.action.increaseViewSize") | apps/custom_visual_studio_code.talon
split shrink | user.vscode("workbench.action.decreaseViewSize") | apps/custom_visual_studio_code.talon
start application | user.vscode("workbench.action.debug.run") | apps/custom_visual_studio_code.talon
step into | user.vscode("workbench.action.debug.stepInto") | apps/custom_visual_studio_code.talon
step out | user.vscode("workbench.action.debug.stepOut") | apps/custom_visual_studio_code.talon
stop application | user.vscode("workbench.action.debug.stop") | apps/custom_visual_studio_code.talon
stop the agent | mouse_move(1872, 980) ⏎     mouse_click(0) | apps/custom_visual_studio_code.talon
swap marker | user.vscode("selectionssaver.swapWithSwapSlot") | apps/custom_visual_studio_code.talon
switch files | user.vscode("workbench.action.quickOpenPreviousRecentlyUsedEditor") | apps/custom_visual_studio_code.talon
switch tab | user.vscode("workbench.action.switchWindow") | apps/custom_visual_studio_code.talon
symbol | user.vscode("workbench.action.gotoSymbol") | apps/custom_visual_studio_code.talon
symbol rename | user.vscode("editor.action.rename") | apps/custom_visual_studio_code.talon
symbols | user.vscode("workbench.action.showAllSymbols") | apps/custom_visual_studio_code.talon
T4 for inject | insert("<#= #>") ⏎     key(left:2) | apps/custom_visual_studio_code.talon
tab] | user.vscode("workbench.files.action.focusOpenEditorsView") | apps/custom_visual_studio_code.talon
table of contents | user.vscode("markdown.extension.toc.create") | apps/custom_visual_studio_code.talon
tag() | user.vscode | apps/visual_studio_code_insiders.talon
take all | key(ctrl-a) | apps/custom_visual_studio_code.talon
take next | user.vscode("editor.emmet.action.selectNextItem") | apps/custom_visual_studio_code.talon
take previous | user.vscode("editor.emmet.action.selectPrevItem") | apps/custom_visual_studio_code.talon
take tag | user.vscode("editor.emmet.action.balanceOut") | apps/custom_visual_studio_code.talon
terminal build | user.vscode("workbench.action.terminal.focus") ⏎     sleep(100ms) ⏎     insert("dotnet build") ⏎     sleep(100ms) ⏎     key(enter) | apps/custom_visual_studio_code.talon
terminal history | user.vscode("workbench.action.terminal.runRecentCommand") | apps/custom_visual_studio_code.talon
terminal in editor | user.vscode("workbench.action.createTerminalEditor") | apps/custom_visual_studio_code.talon
terminal next | user.vscode("workbench.action.terminal.focusNext") | apps/custom_visual_studio_code.talon
terminal previous | user.vscode("workbench.action.terminal.focusPrevious") | apps/custom_visual_studio_code.talon
terminal recent commands | user.vscode("workbench.action.terminal.runRecentCommand") | apps/custom_visual_studio_code.talon
terminal recent directory | user.vscode("workbench.action.terminal.goToRecentDirectory") | apps/custom_visual_studio_code.talon
terminal run | user.vscode("workbench.action.terminal.focus") ⏎     sleep(100ms) ⏎     insert("dotnet run") ⏎     sleep(100ms) ⏎     key(enter) | apps/custom_visual_studio_code.talon
terminal tab | user.vscode("workbench.action.terminal.focus") | apps/custom_visual_studio_code.talon
terminal watch | user.vscode("workbench.action.terminal.focus") ⏎     sleep(100ms) ⏎     insert("dotnet watch run") ⏎     sleep(100ms) ⏎     key(enter) | apps/custom_visual_studio_code.talon
terminal window toggle | user.vscode("workbench.action.toggleMaximizedPanel") | apps/custom_visual_studio_code.talon
test reload | key("ctrl-; ctrl-r") | apps/custom_visual_studio_code.talon
test stop | key("ctrl-; ctrl-x") | apps/custom_visual_studio_code.talon
then by | insert('.ThenBy(x => x)') ⏎     sleep(100ms) ⏎     key(left) ⏎     sleep(100ms) ⏎     insert('.') | custom_voice_coding/csharp.talon
then by descending | insert('.ThenByDescending(x => x)') ⏎     sleep(100ms) ⏎     key(left) ⏎     sleep(100ms) ⏎     insert('.') | custom_voice_coding/csharp.talon
to lower | insert(".ToLower()") | custom_voice_coding/csharp.talon
to upper | insert(".ToUpper()") | custom_voice_coding/csharp.talon
toggle (panel | user.vscode("workbench.action.togglePanel") | apps/custom_visual_studio_code.talon
toggle bold | user.vscode("markdown.extension.editing.toggleBold") | apps/custom_visual_studio_code.talon
Toggle bookmark one | user.vscode("numberedBookmarks.toggleBookmark1") | apps/custom_visual_studio_code.talon
Toggle bookmark three | user.vscode("numberedBookmarks.toggleBookmark3") | apps/custom_visual_studio_code.talon
Toggle bookmark two | user.vscode("numberedBookmarks.toggleBookmark2") | apps/custom_visual_studio_code.talon
toggle breakpoint | user.vscode("editor.debug.action.toggleBreakpoint") | apps/custom_visual_studio_code.talon
toggle close tag | user.vscode("editor.emmet.action.splitJoinTag") | apps/custom_visual_studio_code.talon
toggle code block | user.vscode("markdown.extension.editing.toggleCodeBlock") | apps/custom_visual_studio_code.talon
toggle comment | user.vscode("editor.emmet.action.toggleComment") | apps/custom_visual_studio_code.talon
toggle hats | user.vscode("cursorless.toggleDecorations") | apps/custom_visual_studio_code.talon
toggle italic | user.vscode("markdown.extension.editing.toggleItalic") | apps/custom_visual_studio_code.talon
toggle list | user.vscode("markdown.extension.editing.toggleList") | apps/custom_visual_studio_code.talon
toggle secondary | user.vscode("workbench.action.closeAuxiliaryBar") | apps/custom_visual_studio_code.talon
toggle sidebar | user.vscode("workbench.action.toggleSidebarVisibility") | apps/custom_visual_studio_code.talon
toggle strikethrough | user.vscode("markdown.extension.editing.toggleStrikethrough") | apps/custom_visual_studio_code.talon
toggle task | user.vscode("markdown.extension.checkTaskList") | apps/custom_visual_studio_code.talon
toggle zen mode | user.vscode("workbench.action.toggleZenMode") | apps/custom_visual_studio_code.talon
update tag | user.vscode("editor.emmet.action.updateTag") | apps/custom_visual_studio_code.talon
view problem | user.vscode("editor.action.marker.next") | apps/custom_visual_studio_code.talon
where clause | insert('.Where(x => x)') ⏎     sleep(100ms) ⏎     key(left) ⏎     sleep(100ms) ⏎     insert('.') | custom_voice_coding/csharp.talon
wrap with abbreviation | user.vscode("editor.emmet.action.wrapWithAbbreviation") | apps/custom_visual_studio_code.talon
zoom in | user.vscode("workbench.action.zoomIn") | apps/custom_visual_studio_code.talon
zoom in small | key(ctrl:down) ⏎     user.mouse_scroll_up() ⏎     key(ctrl:up) | apps/custom_visual_studio_code.talon
zoom out | user.vscode("workbench.action.zoomOut") | apps/custom_visual_studio_code.talon
zoom out small | key(ctrl:down) ⏎     user.mouse_scroll_down() ⏎     key(ctrl:up) | apps/custom_visual_studio_code.talon
{user.search_engine} scout <user.cursorless_target> | text = user.cursorless_get_text(cursorless_target) ⏎     user.search_with_search_engine(search_engine, text) | apps/custom_visual_studio_code.talon
