dispatching
dispatch: anEventBuffer

	| context executed |
	context := target morph createCommandContext.
	
	CmdShortcutCommandActivation visibleInstancesInContext: context do: [ :shortcut | 
		executed := shortcut tryExecuteCommandInContext: context byEvents: anEventBuffer.
		executed ifTrue: [ ^self ] ]