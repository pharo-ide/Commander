world menu
worldShortcutsOn: aBuilder
	<keymap>
	CmdShortcutCommandActivation 
		activateAllInContext: (CmdWorldMenuContext for: World) 
		by: [ :activator | 
			(aBuilder shortcut: activator hash)
				category: #CmdWorldShortcutsCategory
				default: activator activationStrategy keyCombination
				do: [ activator executeCommand ]].