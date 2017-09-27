building
buildCommandItemInContext: aToolContext activatingBy: aCommandActivator

	| commandActivator group |
	commandActivator := aCommandActivator newActivatorFor: aToolContext.
	
	group := self ensureGroup: aCommandActivator menuGroup.
	group addItem: (CmdCommandMenuItem activatingBy: commandActivator)