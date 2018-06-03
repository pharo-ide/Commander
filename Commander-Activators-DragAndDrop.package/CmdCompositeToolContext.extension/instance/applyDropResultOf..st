*Commander-Activators-DragAndDrop
applyDropResultOf: aCommand

	| activeDropContext |
	activeDropContext := existingContexts detect: [ :each | 
		each allowsDropExecutionOf: aCommand ].
	
	activeDropContext applyDropResultOf: aCommand