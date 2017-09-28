*Commander-Activators-ContextMenu
setUpShortcutTipForMenuItem: aMenuItemMorph
	
	| keyText |
	
	CmdShortcutCommandActivation allDeclaredFor: context do: [ :shortcut |  	
		"this is trick to show shortcut on menu with existing menu support"
		((shortcut annotates: command class) and: [shortcut canExecuteCommandInContext: context])
			ifTrue: [ 
				keyText := String streamContents: [:s | 
					shortcut keyCombination prettyPrintOn: s].
				keyText := keyText copyWithout: keyText first.
				aMenuItemMorph keyText: keyText]]