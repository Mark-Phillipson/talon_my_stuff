# Talon Cheatsheet — VS Code

| Spoken Command | Description | Source |
|----------------|-------------|--------|
| (checkbox) | key(ctrl-enter) | custom_visual_studio_code |
| (closed tab | user.vscode("workbench.action.closeActiveEditor") | custom_visual_studio_code |
| (code behind) | user.vscode("extension.goToCodeBehind") | custom_visual_studio_code |
| (focus terminal) | user.vscode("workbench.action.terminal.focus") | custom_visual_studio_code |
| (focus) | user.vscode("extension.goToController") | custom_visual_studio_code |
| (hunt | edit.find() | custom_visual_studio_code |
| (navigate [to]) | user.vscode("workbench.action.quickOpen") | custom_visual_studio_code |
| (new task) | key(ctrl-enter) | custom_visual_studio_code |
| (search files [by name]) | user.vscode("workbench.action.quickOpen") | custom_visual_studio_code |
| (show code places) | user.vscode("workbench.action.gotoSymbol") | custom_visual_studio_code |
| (terminal focus) | user.vscode("workbench.action.terminal.focus") | custom_visual_studio_code |
| (view code) | user.vscode("extension.goToCodeBehind") | custom_visual_studio_code |
| (view) Controller | user.vscode("extension.goToController") | custom_visual_studio_code |
| <user.formatters> {user.cursorless_reformat_action} <user.cursorless_target> | user.private_cursorless_reformat(cursorless_target, formatters) | custom_visual_studio_code |
| [focus] commit message | user.vscode("workbench.scm.action.focusNextInput") | custom_visual_studio_code |
| [focus] problems | user.vscode("workbench.panel.markers.view.focus") | custom_visual_studio_code |
| [focus] source control | user.vscode("workbench.view.scm") | custom_visual_studio_code |
| [go to] definition | user.vscode("editor.action.revealDefinition") | custom_visual_studio_code |
| [view] component | user.vscode("extension.goToBlazorComponent") | custom_visual_studio_code |
| add context | key(ctrl-/) | custom_visual_studio_code |
| app | vscode | visual_studio_code_sleeping |
| app | vscode | custom_visual_studio_code |
| app | VS Code Insiders | visual_studio_code_insiders |
| app | vscode | csharp |
| app | devenv.exe | csharp |
| app | visual_studio_code | visual_studio_code |
| arrow operator | insert(" => ") | csharp |
| balance (inward) | user.vscode("editor.emmet.action.balanceIn") | custom_visual_studio_code |
| balance (outward) | user.vscode("editor.emmet.action.balanceOut") | custom_visual_studio_code |
| bar connections | user.vscode("dataExplorer.servers.focus") | custom_visual_studio_code |
| bar debug | user.vscode("workbench.view.debug") | custom_visual_studio_code |
| bar notebooks | user.vscode("workbench.view.notebooks") | custom_visual_studio_code |
| breadcrumbs focus | user.vscode("breadcrumbs.focus") | custom_visual_studio_code |
| close others | user.vscode("workbench.action.closeOtherEditors") | custom_visual_studio_code |
| close tab) | user.vscode("workbench.action.closeActiveEditor") | custom_visual_studio_code |
| collapse folders | user.vscode("workbench.files.action.collapseExplorerFolders") | custom_visual_studio_code |
| collect anchor | user.vscode("editor.action.goToSelectionAnchor") | custom_visual_studio_code |
| collect marker | user.vscode("selectionssaver.restoreBookmark") | custom_visual_studio_code |
| comment line | user.vscode("editor.action.commentLine") | custom_visual_studio_code |
| complete task | key(alt-d) | custom_visual_studio_code |
| connections | user.vscode("workbench.view.connections") | custom_visual_studio_code |
| context last | key(ctrl-/) ⏎     sleep(200ms) ⏎     insert("tools") ⏎     sleep(100ms) ⏎     key(enter) ⏎     in... | custom_visual_studio_code |
| continue | user.vscode("workbench.action.debug.continue") | custom_visual_studio_code |
| copy code link | user.vscode("gitlens.copyDeepLinkToLines") | custom_visual_studio_code |
| copy Github link | user.vscode("issue.copyGithubPermalink") | custom_visual_studio_code |
| CSV filter | user.vscode("rainbow-csv.RBQL") | custom_visual_studio_code |
| cursor down | user.vscode("editor.action.insertCursorBelow") | custom_visual_studio_code |
| cursor up | user.vscode("editor.action.insertCursorAbove") | custom_visual_studio_code |
| debug application | user.vscode("workbench.action.debug.start") | custom_visual_studio_code |
| draft this | key(ctrl-a) ⏎     sleep(60ms) ⏎     key(ctrl-c) ⏎     sleep(60ms) ⏎     user.vscode("welcome.show... | custom_visual_studio_code |
| drop anchor | user.vscode("editor.action.setSelectionAnchor") | custom_visual_studio_code |
| drop marker | user.vscode("selectionssaver.saveBookmark") | custom_visual_studio_code |
| duplicate line | user.vscode("editor.action.copyLinesDownAction") | custom_visual_studio_code |
| edge search | user.vscode("editor.action.selectAll") ⏎     user.vscode("editor.action.clipboardCopyAction") ⏎  ... | custom_visual_studio_code |
| error lens toggle | user.vscode("errorLens.toggle") | custom_visual_studio_code |
| execute query | user.vscode("mssql.runQuery") | custom_visual_studio_code |
| expand abbreviation | user.vscode("editor.emmet.action.expandAbbreviation") | custom_visual_studio_code |
| expand selection | user.vscode("editor.action.smartSelect.expand") | custom_visual_studio_code |
| explorer build | user.vscode("solutionExplorer.focus") ⏎     sleep(100ms) ⏎     key(menu) ⏎     sleep(100ms) ⏎    ... | custom_visual_studio_code |
| explorer debug | user.vscode("solutionExplorer.focus") ⏎     sleep(100ms) ⏎     key(menu) ⏎     sleep(100ms) ⏎    ... | custom_visual_studio_code |
| file save all | user.vscode("workbench.action.files.saveAll") | custom_visual_studio_code |
| file save as | user.vscode("workbench.action.files.saveAs") | custom_visual_studio_code |
| find next [<user.text>] | key(ctrl-f) ⏎     sleep(100ms) ⏎     insert(text or "") | custom_visual_studio_code |
| find) this | edit.find() | custom_visual_studio_code |
| first or default | insert('.FirstOrDefault()') ⏎     sleep(100ms) ⏎     key(left) | csharp |
| first or default async | insert('.FirstOrDefaultAsync()') ⏎     sleep(100ms) ⏎     key(left) | csharp |
| fix errors | insert("Please Fix All Build Errors and Warnings!") ⏎     sleep(100ms) ⏎     key(enter) | custom_visual_studio_code |
| focus debug | user.vscode("workbench.view.debug") | custom_visual_studio_code |
| focus editors | user.vscode("workbench.files.action.focusOpenEditorsView") | custom_visual_studio_code |
| focus explorer | user.vscode("workbench.view.explorer") | custom_visual_studio_code |
| focus extensions | user.vscode("workbench.view.extensions") | custom_visual_studio_code |
| focus open [files | user.vscode("workbench.files.action.focusOpenEditorsView") | custom_visual_studio_code |
| focus search | user.vscode("workbench.view.search") | custom_visual_studio_code |
| for each loop | insert("foreach") ⏎     sleep(100ms) ⏎     key(ctrl-j) ⏎     sleep(100ms) ⏎     key(tab tab) | csharp |
| format code | user.vscode("editor.action.formatDocument") | custom_visual_studio_code |
| funk contains | insert('.Contains("")') ⏎     sleep(100ms) ⏎     key(left left) ⏎     sleep(100ms) | csharp |
| generic list | insert("List<>") ⏎     key(left) ⏎     sleep(100ms) ⏎     insert("string") ⏎     key(shift-ctrl-l... | csharp |
| get selection | user.vscode("editor.action.goToSelectionAnchor") | custom_visual_studio_code |
| go [command] palette | key(ctrl-shift-p) | custom_visual_studio_code |
| go bookmark one | user.vscode("numberedBookmarks.jumpToBookmark1") | custom_visual_studio_code |
| go bookmark three | user.vscode("numberedBookmarks.jumpToBookmark3") | custom_visual_studio_code |
| go bookmark two | user.vscode("numberedBookmarks.jumpToBookmark2") | custom_visual_studio_code |
| go method | user.vscode("semantic-movement.jumpToContainingFunction") | custom_visual_studio_code |
| Go to next bookmark | user.vscode("editor.action.goToNextBookmark") | custom_visual_studio_code |
| go to view | user.vscode("extension.goToView") | custom_visual_studio_code |
| group by | insert('.GroupBy(x => x)') ⏎     sleep(100ms) ⏎     key(left) ⏎     sleep(100ms) ⏎     insert('.') | csharp |
| if statement | user.vscode("editor.action.insertSnippet") ⏎     sleep(100ms) ⏎     insert("if") ⏎     key(enter) | custom_visual_studio_code |
| keep changes | key(ctrl-enter) | custom_visual_studio_code |
| keyboard shortcuts | user.vscode("workbench.action.openGlobalKeybindings") | custom_visual_studio_code |
| lambda operator <user.letter> | insert(letter) ⏎     sleep(100ms) ⏎     insert(" => " + letter) ⏎     sleep(100ms) | csharp |
| last edit | user.vscode("workbench.action.navigateToLastEditLocation") | custom_visual_studio_code |
| last position | user.vscode("workbench.action.navigateBack") | custom_visual_studio_code |
| list members | user.vscode("editor.action.triggerSuggest") | custom_visual_studio_code |
| local host Marvin | user.open_url("http://localhost:5016") | custom_visual_studio_code |
| make code bigger | user.vscode("editor.action.fontZoomIn") | custom_visual_studio_code |
| make code smaller | user.vscode("editor.action.fontZoomOut") | custom_visual_studio_code |
| markdown preview | user.vscode("markdown.showPreview") | custom_visual_studio_code |
| maximize (panel | user.vscode("workbench.action.toggleMaximizedPanel") | custom_visual_studio_code |
| maximize editor | key(f1) ⏎     sleep(100ms) ⏎     insert("View: Toggle Primary Sidebar Visibility") ⏎     key(enter) | custom_visual_studio_code |
| merge lines | user.vscode("editor.emmet.action.mergeLines") | custom_visual_studio_code |
| mode | sleep | visual_studio_code_sleeping |
| move line down | user.vscode("editor.action.moveLinesDownAction") | custom_visual_studio_code |
| move line up | user.vscode("editor.action.moveLinesUpAction") | custom_visual_studio_code |
| multi tabs | user.vscode("workbench.action.showMultipleEditorTabs") | custom_visual_studio_code |
| new file | #user.vscode("csdevkit.addNewFile") ⏎     key(menu) ⏎     sleep(100ms) ⏎     key(down) | custom_visual_studio_code |
| new file here | user.vscode("fileutils.newFile") | custom_visual_studio_code |
| new folder | user.vscode("explorer.newFolder") | custom_visual_studio_code |
| next edit | user.vscode("workbench.action.navigateForwardInEditLocations") | custom_visual_studio_code |
| next issue | user.vscode("editor.action.marker.next") | custom_visual_studio_code |
| next tab | user.vscode("workbench.action.nextEditor") | custom_visual_studio_code |
| not equal empty | insert(" != null ") | csharp |
| object explorer focus | user.vscode("objectExplorer.focus") | custom_visual_studio_code |
| open accessible view | user.vscode("editor.action.accessibleView") | custom_visual_studio_code |
| open folder | user.vscode("workbench.action.files.openFolder") | custom_visual_studio_code |
| open recent | user.vscode("workbench.action.openRecent") | custom_visual_studio_code |
| open smart tag | user.vscode("editor.action.quickFix") | custom_visual_studio_code |
| open talon log | user.vscode("workbench.action.files.openFile") ⏎     sleep(400ms) ⏎     insert("C:\\Users\\MPhil\... | custom_visual_studio_code |
| order by | insert('.OrderBy(x => x)') ⏎     sleep(100ms) ⏎     key(left) ⏎     sleep(100ms) ⏎     insert('.') | csharp |
| order by descending | insert('.OrderByDescending(x => x)') ⏎     sleep(100ms) ⏎     key(left) ⏎     sleep(100ms) ⏎     ... | csharp |
| os | windows | custom_visual_studio_code |
| pain) | user.vscode("workbench.action.togglePanel") | custom_visual_studio_code |
| palate | key(ctrl-shift-p) | custom_visual_studio_code |
| palette | key(ctrl-shift-p) | custom_visual_studio_code |
| pane) | user.vscode("workbench.action.toggleMaximizedPanel") | custom_visual_studio_code |
| parameter info | user.vscode("editor.action.triggerParameterHints") | custom_visual_studio_code |
| pick model | key(ctrl-alt-.) | custom_visual_studio_code |
| pilot accept [word] | key(ctrl-right) | custom_visual_studio_code |
| pilot ask | key(ctrl-i) | custom_visual_studio_code |
| pilot chat file | user.copilot_chat("") ⏎     sleep(300ms) ⏎     insert("#f") | custom_visual_studio_code |
| pilot chat fix error | user.copilot_chat("#selection How can I /fix this error") | custom_visual_studio_code |
| pilot chat workspace | user.copilot_chat("") ⏎     sleep(300ms) ⏎     insert("@workspace ") | custom_visual_studio_code |
| pilot completions | user.vscode("github.copilot.completions.toggle") | custom_visual_studio_code |
| pilot continue | key(ctrl-enter) | custom_visual_studio_code |
| pilot edits | user.vscode("workbench.action.chat.openEditSession") | custom_visual_studio_code |
| pilot fix errors | key(ctrl-/) ⏎     sleep(200ms) ⏎     insert("tools") ⏎     sleep(200ms) ⏎     key(enter) ⏎     sl... | custom_visual_studio_code |
| pilot fix warnings | key(ctrl-/) ⏎     sleep(300ms) ⏎     insert("tools") ⏎     sleep(300ms) ⏎     key(enter) ⏎     sl... | custom_visual_studio_code |
| pilot inline | key(ctrl-i) | custom_visual_studio_code |
| pilot list commands | key(ctrl-shift-p) ⏎     sleep(100ms) ⏎     insert("GitHub Copilot: ") | custom_visual_studio_code |
| pilot new chat | user.copilot_chat("") ⏎     sleep(100ms) ⏎     key(ctrl-l) | custom_visual_studio_code |
| pilot next edit | user.vscode("chatEditor.action.navigateNext") | custom_visual_studio_code |
| pilot previous edit | user.vscode("chatEditor.action.navigatePrevious") | custom_visual_studio_code |
| pilot toggle | user.vscode("github.copilot.toggleCopilot") | custom_visual_studio_code |
| pilot voice | user.vscode("workbench.action.chat.startVoiceChat") | visual_studio_code_sleeping |
| pilot voice | user.vscode("workbench.action.chat.startVoiceChat") ⏎     speech.disable() | custom_visual_studio_code |
| pilot window toggle | user.vscode("workbench.action.toggleMaximizedAuxiliaryBar") | custom_visual_studio_code |
| please dotnet | key(f1) ⏎     sleep(300ms) ⏎     insert(".NET") ⏎     sleep(100ms) ⏎     key(enter) | custom_visual_studio_code |
| previous edit | user.vscode("workbench.action.navigateBackInEditLocations") | custom_visual_studio_code |
| previous issue | user.vscode("editor.action.marker.prev") | custom_visual_studio_code |
| previous tab | user.vscode("workbench.action.previousEditor") | custom_visual_studio_code |
| put <user.cursorless_target> | value = user.cursorless_get_text(cursorless_target, true) ⏎     insert(value) | custom_visual_studio_code |
| query history | user.vscode("queryHistory.focus") | custom_visual_studio_code |
| remove tag | user.vscode("editor.emmet.action.removeTag") | custom_visual_studio_code |
| rename [file] | key(f2) | custom_visual_studio_code |
| reset code | user.vscode("workbench.action.debug.stop") | custom_visual_studio_code |
| restart (debugging) | user.vscode("workbench.action.debug.restart") | custom_visual_studio_code |
| run prompt [in] [pilot] | key(alt-super-/) | custom_visual_studio_code |
| run prompt [in] new [pilot] | #key(ctrl-alt-super-/) ⏎     user.vscode("workbench.action.chat.run-in-new-chat.prompt.current") | custom_visual_studio_code |
| save swap marker | user.vscode("selectionssaver.saveSelectionToSwapSlot") | custom_visual_studio_code |
| search | edit.find() | custom_visual_studio_code |
| search code | user.vscode("actions.find") | custom_visual_studio_code |
| search files <user.cursorless_target> | value = user.cursorless_get_text(cursorless_target, true) ⏎     user.vscode("workbench.action.qui... | custom_visual_studio_code |
| search files [<user.text>] | user.vscode("workbench.action.quickOpen") ⏎     insert(text) | custom_visual_studio_code |
| select from anchor | user.vscode("editor.action.selectFromAnchorToCursor") | custom_visual_studio_code |
| select matching <user.number_signed_small> | user.vscode("editor.action.addSelectionToNextFindMatch") ⏎     repeat(number_signed_small-1) | custom_visual_studio_code |
| select matching all | user.vscode("editor.action.selectHighlights") | custom_visual_studio_code |
| select matching next | user.vscode("editor.action.addSelectionToNextFindMatch") | custom_visual_studio_code |
| select matching previous | user.vscode("editor.action.addSelectionToPreviousFindMatch") | custom_visual_studio_code |
| select tools | key(ctrl-shift-/) | custom_visual_studio_code |
| send to pilot | key(shift-home) ⏎     sleep(30ms) ⏎     key(shift-right) ⏎     sleep(30ms) ⏎     key(ctrl-x) ⏎   ... | custom_visual_studio_code |
| set mode | key(ctrl-.) | custom_visual_studio_code |
| set selection | user.vscode("editor.action.setSelectionAnchor") | custom_visual_studio_code |
| show code lens | user.vscode("codelens.showLensesInCurrentLine") | custom_visual_studio_code |
| shrink selection | user.vscode("editor.action.smartSelect.shrink") | custom_visual_studio_code |
| sidebar grow | user.vscode("workbench.action.decreaseViewWidth") | custom_visual_studio_code |
| sidebar shrink | user.vscode("workbench.action.increaseViewWidth") | custom_visual_studio_code |
| single tab | user.vscode("workbench.action.showEditorTab") | custom_visual_studio_code |
| solution explorer | user.vscode("solutionExplorer.focus") | custom_visual_studio_code |
| split grow | user.vscode("workbench.action.increaseViewSize") | custom_visual_studio_code |
| split shrink | user.vscode("workbench.action.decreaseViewSize") | custom_visual_studio_code |
| start application | user.vscode("workbench.action.debug.run") | custom_visual_studio_code |
| step into | user.vscode("workbench.action.debug.stepInto") | custom_visual_studio_code |
| step out | user.vscode("workbench.action.debug.stepOut") | custom_visual_studio_code |
| stop application | user.vscode("workbench.action.debug.stop") | custom_visual_studio_code |
| stop the agent | mouse_move(1872, 980) ⏎     mouse_click(0) | custom_visual_studio_code |
| swap marker | user.vscode("selectionssaver.swapWithSwapSlot") | custom_visual_studio_code |
| switch files | user.vscode("workbench.action.quickOpenPreviousRecentlyUsedEditor") | custom_visual_studio_code |
| switch tab | user.vscode("workbench.action.switchWindow") | custom_visual_studio_code |
| symbol | user.vscode("workbench.action.gotoSymbol") | custom_visual_studio_code |
| symbol rename | user.vscode("editor.action.rename") | custom_visual_studio_code |
| symbols | user.vscode("workbench.action.showAllSymbols") | custom_visual_studio_code |
| T4 for inject | insert("<#= #>") ⏎     key(left:2) | custom_visual_studio_code |
| tab] | user.vscode("workbench.files.action.focusOpenEditorsView") | custom_visual_studio_code |
| table of contents | user.vscode("markdown.extension.toc.create") | custom_visual_studio_code |
| tag() | user.vscode | visual_studio_code_insiders |
| take all | key(ctrl-a) | custom_visual_studio_code |
| take next | user.vscode("editor.emmet.action.selectNextItem") | custom_visual_studio_code |
| take previous | user.vscode("editor.emmet.action.selectPrevItem") | custom_visual_studio_code |
| take tag | user.vscode("editor.emmet.action.balanceOut") | custom_visual_studio_code |
| terminal build | user.vscode("workbench.action.terminal.focus") ⏎     sleep(100ms) ⏎     insert("dotnet build") ⏎ ... | custom_visual_studio_code |
| terminal history | user.vscode("workbench.action.terminal.runRecentCommand") | custom_visual_studio_code |
| terminal in editor | user.vscode("workbench.action.createTerminalEditor") | custom_visual_studio_code |
| terminal next | user.vscode("workbench.action.terminal.focusNext") | custom_visual_studio_code |
| terminal previous | user.vscode("workbench.action.terminal.focusPrevious") | custom_visual_studio_code |
| terminal recent commands | user.vscode("workbench.action.terminal.runRecentCommand") | custom_visual_studio_code |
| terminal recent directory | user.vscode("workbench.action.terminal.goToRecentDirectory") | custom_visual_studio_code |
| terminal run | user.vscode("workbench.action.terminal.focus") ⏎     sleep(100ms) ⏎     insert("dotnet run") ⏎   ... | custom_visual_studio_code |
| terminal tab | user.vscode("workbench.action.terminal.focus") | custom_visual_studio_code |
| terminal watch | user.vscode("workbench.action.terminal.focus") ⏎     sleep(100ms) ⏎     insert("dotnet watch run"... | custom_visual_studio_code |
| terminal window toggle | user.vscode("workbench.action.toggleMaximizedPanel") | custom_visual_studio_code |
| test reload | key("ctrl-; ctrl-r") | custom_visual_studio_code |
| test stop | key("ctrl-; ctrl-x") | custom_visual_studio_code |
| then by | insert('.ThenBy(x => x)') ⏎     sleep(100ms) ⏎     key(left) ⏎     sleep(100ms) ⏎     insert('.') | csharp |
| then by descending | insert('.ThenByDescending(x => x)') ⏎     sleep(100ms) ⏎     key(left) ⏎     sleep(100ms) ⏎     i... | csharp |
| to lower | insert(".ToLower()") | csharp |
| to upper | insert(".ToUpper()") | csharp |
| toggle (panel | user.vscode("workbench.action.togglePanel") | custom_visual_studio_code |
| toggle bold | user.vscode("markdown.extension.editing.toggleBold") | custom_visual_studio_code |
| Toggle bookmark one | user.vscode("numberedBookmarks.toggleBookmark1") | custom_visual_studio_code |
| Toggle bookmark three | user.vscode("numberedBookmarks.toggleBookmark3") | custom_visual_studio_code |
| Toggle bookmark two | user.vscode("numberedBookmarks.toggleBookmark2") | custom_visual_studio_code |
| toggle breakpoint | user.vscode("editor.debug.action.toggleBreakpoint") | custom_visual_studio_code |
| toggle close tag | user.vscode("editor.emmet.action.splitJoinTag") | custom_visual_studio_code |
| toggle code block | user.vscode("markdown.extension.editing.toggleCodeBlock") | custom_visual_studio_code |
| toggle comment | user.vscode("editor.emmet.action.toggleComment") | custom_visual_studio_code |
| toggle hats | user.vscode("cursorless.toggleDecorations") | custom_visual_studio_code |
| toggle italic | user.vscode("markdown.extension.editing.toggleItalic") | custom_visual_studio_code |
| toggle list | user.vscode("markdown.extension.editing.toggleList") | custom_visual_studio_code |
| toggle secondary | user.vscode("workbench.action.closeAuxiliaryBar") | custom_visual_studio_code |
| toggle sidebar | user.vscode("workbench.action.toggleSidebarVisibility") | custom_visual_studio_code |
| toggle strikethrough | user.vscode("markdown.extension.editing.toggleStrikethrough") | custom_visual_studio_code |
| toggle task | user.vscode("markdown.extension.checkTaskList") | custom_visual_studio_code |
| toggle zen mode | user.vscode("workbench.action.toggleZenMode") | custom_visual_studio_code |
| update tag | user.vscode("editor.emmet.action.updateTag") | custom_visual_studio_code |
| view problem | user.vscode("editor.action.marker.next") | custom_visual_studio_code |
| where clause | insert('.Where(x => x)') ⏎     sleep(100ms) ⏎     key(left) ⏎     sleep(100ms) ⏎     insert('.') | csharp |
| wrap with abbreviation | user.vscode("editor.emmet.action.wrapWithAbbreviation") | custom_visual_studio_code |
| zoom in | user.vscode("workbench.action.zoomIn") | custom_visual_studio_code |
| zoom in small | key(ctrl:down) ⏎     user.mouse_scroll_up() ⏎     key(ctrl:up) | custom_visual_studio_code |
| zoom out | user.vscode("workbench.action.zoomOut") | custom_visual_studio_code |
| zoom out small | key(ctrl:down) ⏎     user.mouse_scroll_down() ⏎     key(ctrl:up) | custom_visual_studio_code |
| {user.search_engine} scout <user.cursorless_target> | text = user.cursorless_get_text(cursorless_target) ⏎     user.search_with_search_engine(search_en... | custom_visual_studio_code |
