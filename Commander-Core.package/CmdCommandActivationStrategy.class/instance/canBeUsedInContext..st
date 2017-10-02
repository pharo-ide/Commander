testing
canBeUsedInContext: aToolContext
	self commandClass isAbstract ifTrue: [ ^false ].
	
	^contextDefinition describes: aToolContext