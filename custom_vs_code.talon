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
