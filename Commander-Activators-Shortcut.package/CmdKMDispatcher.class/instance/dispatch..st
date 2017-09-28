dispatching
dispatch: anEventBuffer

	| context executed |
	context := target morph createCommandContext.
	
	CmdShortcutCommandActivation allDeclaredFor: context do: [ :shortcut | 
		executed := shortcut tryExecuteCommandInContext: context byEvents: anEventBuffer.
		executed ifTrue: [ ^self ] ]