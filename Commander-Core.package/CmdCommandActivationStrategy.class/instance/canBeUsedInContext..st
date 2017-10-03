testing
canBeUsedInContext: aToolContext
	self commandClass isAbstract ifTrue: [ ^false ].
	
	^context describes: aToolContext