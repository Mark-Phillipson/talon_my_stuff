app: vscode
-
(closed tab) | (close tab) : user.vscode("workbench.action.closeActiveEditor")
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