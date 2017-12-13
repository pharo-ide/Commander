dispatching
dispatch: anEventBuffer

	| context executed |
	context := self commandContext.
	
	CmdShortcutCommandActivation visibleInstancesInContext: context do: [ :shortcut | 
		executed := shortcut tryExecuteCommandInContext: context byEvents: anEventBuffer.
		executed ifTrue: [ ^self ] ]