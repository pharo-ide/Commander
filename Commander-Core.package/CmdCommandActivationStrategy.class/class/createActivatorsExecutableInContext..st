activation
createActivatorsExecutableInContext: aToolContext
	| result |
	result := OrderedCollection new.
	
	self 
		activateAllInContext: aToolContext 
		by: [:each | result add: each].
		
	^result