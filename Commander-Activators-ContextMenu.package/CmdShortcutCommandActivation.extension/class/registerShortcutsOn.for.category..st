*Commander-Activators-ContextMenu
registerShortcutsOn: aBuilder for: aContext category: shortcutsCategory

	CmdShortcutCommandActivation 
		activeInstancesInContext: aContext
		do: [ :activation | 
			(aBuilder shortcut: activation commandClass name)
				category: shortcutsCategory
				default: activation keyCombination
				do: [ (activation newActivatorFor: aContext) executeCommand ]]