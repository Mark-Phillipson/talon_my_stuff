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
focus editor: user.vscode("workbench.action.focusActiveEditorGroup")125
toggle hats: user.vscode("cursorless.toggleDecorations")
maximize editor : 
    key(f1)
    sleep(100ms)
    insert("View: Toggle Primary Sidebar Visibility")
    key(enter)
solution explorer: user.vscode("solutionExplorer.focus")    
debug application: user.vscode("workbench.action.debug.start")
start application:key(shift-f5)
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
search in edge:
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


