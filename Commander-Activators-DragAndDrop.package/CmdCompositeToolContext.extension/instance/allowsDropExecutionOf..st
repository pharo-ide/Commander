*Commander-Activators-DragAndDrop
allowsDropExecutionOf: aCommand

	^existingContexts anySatisfy: [ :each | 
		each allowsDropExecutionOf: aCommand ]