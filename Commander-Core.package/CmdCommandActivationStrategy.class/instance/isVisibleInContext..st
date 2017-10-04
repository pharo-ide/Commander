testing
isVisibleInContext: aToolContext
	self commandClass isAbstract ifTrue: [ ^false ].
	
	^super isVisibleInContext: aToolContext