dispatching
dispatch: anEventBuffer

	| context executed |
	context := self commandProvider createCommandContext.
	
	CmdShortcutCommandActivation visibleInstancesInContext: context do: [ :shortcut | 
		executed := shortcut tryExecuteCommandInContext: context byEvents: anEventBuffer.
		executed ifTrue: [ ^self ] ].
	
	super dispatch: anEventBuffer 