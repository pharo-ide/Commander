commands enumeration
allDeclaredFor: aToolContext do: blockWithActivator
	^CmdCommand allCommandsFor: aToolContext withActivator: self do: blockWithActivator