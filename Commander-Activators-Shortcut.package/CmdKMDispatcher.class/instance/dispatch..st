dispatching
dispatch: anEventBuffer

	| context executed |
	context := target morph createCommandContext.
	
	CmdShortcutCommandActivation forAllCommandsInContext: context do: [ :shortcut | 
		executed := shortcut tryExecuteCommandInContext: context byEvents: anEventBuffer.
		executed ifTrue: [ ^self ] ]