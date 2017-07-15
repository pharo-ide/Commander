dispatching
dispatch: anEventBuffer

	| context executed |
	context := target morph createCommandContext.
	
	CmdShortcutCommandActivator allDeclaredFor: context do: [ :shortcutActivation | 
		executed := shortcutActivation tryExecuteCommandInContext: context byEvents: anEventBuffer.
		executed ifTrue: [ ^self ] ]