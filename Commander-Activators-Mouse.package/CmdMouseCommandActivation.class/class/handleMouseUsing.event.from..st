morphs setup
handleMouseUsing: someObjectWithCommandContext event: anEvent from: sourceMorph 
	| targetContext |
	targetContext := someObjectWithCommandContext 
		createCommandContextForCursorAt: anEvent cursorPoint.
	
	self activeInstancesInContext: targetContext do: [:activation | 
		(activation matchesEvent: anEvent) ifTrue: [ 
			^(activation newActivatorFor: targetContext) executeCommand ]]