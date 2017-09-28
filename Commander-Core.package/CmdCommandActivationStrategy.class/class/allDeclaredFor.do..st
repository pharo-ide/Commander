commands enumeration
allDeclaredFor: aToolContext do: blockWithActivator
	
	self registeredInstances
		select: [ :each | each canBeUsedInContext: aToolContext]
		thenDo: blockWithActivator