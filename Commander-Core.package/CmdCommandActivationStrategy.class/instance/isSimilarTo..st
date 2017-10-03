testing
isSimilarTo: anotherCommandActivator

	^self class = anotherCommandActivator class 
		and: [self commandClass = anotherCommandActivator commandClass
			and: [context = anotherCommandActivator context]]