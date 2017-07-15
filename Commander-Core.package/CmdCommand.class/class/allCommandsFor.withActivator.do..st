accessing
allCommandsFor: aToolContext withActivator: activatorClass do: blockWithActivator

	self 
		activatorsFor: aToolContext
		which: [ :each | each isKindOf: activatorClass ] 
		do: blockWithActivator.
	
	self subclassesDo: [ :eachCommand | 
		eachCommand allCommandsFor: aToolContext withActivator: activatorClass do: blockWithActivator]