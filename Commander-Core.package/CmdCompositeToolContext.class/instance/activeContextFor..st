accessing
activeContextFor: aCommand
	^existingContexts detect: [ :each | 
		each allowsExecutionOf: aCommand]