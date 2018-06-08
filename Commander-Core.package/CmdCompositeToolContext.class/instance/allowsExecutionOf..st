testing
allowsExecutionOf: aCommandClass

	^existingContexts anySatisfy: [:each | 
		each allowsExecutionOf: aCommandClass]