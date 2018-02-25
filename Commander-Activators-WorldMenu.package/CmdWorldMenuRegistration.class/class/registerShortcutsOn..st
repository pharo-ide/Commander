world menu
registerShortcutsOn: aBuilder
	<keymap>
	| context |
	context := self createWorldContext.
	CmdShortcutCommandActivation 
		activeInstancesInContext: context 
		do: [ :activation | 
			(aBuilder shortcut: activation commandClass name)
				category: #CmdWorldShortcutsCategory
				default: activation keyCombination
				do: [ (activation newActivatorFor: context) executeCommand ]].