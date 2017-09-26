testing
canBeUsedInContext: aToolContext
	self commandClass isAbstract ifTrue: [ ^false ].
	
	^aToolContext isActivationOf: activationContextClass