*Commander-Activators-DragAndDrop
prepareDropExecutionOf: aCommand

	| activeDropContext |
	activeDropContext := existingContexts detect: [ :each | 
		each allowsDropExecutionOf: aCommand ].
	
	activeDropContext prepareDropExecutionOf: aCommand