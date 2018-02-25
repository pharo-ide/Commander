world menu
registerShortcutsOn: aBuilder
	<keymap>
	
	CmdShortcutCommandActivation
		registerShortcutsOn: aBuilder 
		for: self createCommandContext 
		category: self shortcutsCategory