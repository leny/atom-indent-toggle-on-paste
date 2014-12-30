module.exports = IndentToggleOnPaste =
    activate: ->
        atom.commands.add ".editor:not(.mini)",
            "indent-toggle-on-paste:paste": => @paste()

    paste: ->
        bCurrentConfigValue = atom.config.get "editor.autoIndentOnPaste"
        atom.config.set "editor.autoIndentOnPaste", not bCurrentConfigValue
        atom.workspace.getActiveTextEditor().pasteText()
        atom.config.set "editor.autoIndentOnPaste", bCurrentConfigValue        
