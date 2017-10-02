*Commander-Activators-ContextMenu
setUpShortcutTipForMenuItem: aMenuItemMorph
	| keyText |
	
	CmdShortcutCommandActivation 
		allExecutableInContext: context for: command class 
		do: [ :shortcut |  	
			"this is trick to show shortcut on menu with existing menu support"
			keyText := String streamContents: [:s | 
				shortcut keyCombination prettyPrintOn: s].
			keyText := keyText copyWithout: keyText first.
			aMenuItemMorph keyText: keyText]