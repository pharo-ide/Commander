accessing
allAvailableInContext: aToolContext do: blockWithActivation
	
	self registeredInstances
		select: [ :each | each canBeUsedInContext: aToolContext]
		thenDo: blockWithActivation