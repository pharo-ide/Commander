commands enumeration
createActivatorsForExecutableCommandsInContext: aToolContext
	| result |
	result := OrderedCollection new.
	
	self 
		forExecutableCommandsInContext: aToolContext 
		doWithActivator: [:each | result add: each].
		
	^result