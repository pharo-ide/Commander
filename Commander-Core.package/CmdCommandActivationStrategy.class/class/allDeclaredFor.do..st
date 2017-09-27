commands enumeration
allDeclaredFor: aToolContext do: blockWithActivator
	
	self declaredInstances
		select: [ :each | each canBeUsedInContext: aToolContext]
		thenDo: blockWithActivator