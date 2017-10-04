testing
canBeUsedInContext: aToolContext
	self commandClass isAbstract ifTrue: [ ^false ].
	
	^activeContext describes: aToolContext