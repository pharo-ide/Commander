testing
isSimilarTo: anotherCommandActivator

	^(activationStrategy isSimilarTo: anotherCommandActivator activationStrategy)
		and: [context isSimilarTo: anotherCommandActivator context ]