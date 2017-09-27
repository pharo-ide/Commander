dispatching
dispatch: anEventBuffer

	| context executed |
	context := target morph createCommandContext.
	
	CmdShortcutCommandActivation allDeclaredFor: context do: [ :shortcutActivation | 
		executed := shortcutActivation tryExecuteCommandInContext: context byEvents: anEventBuffer.
		executed ifTrue: [ ^self ] ]