morphs setup
handleMouseUsing: someObjectWithCommandContext event: anEvent from: sourceMorph 
	| targetContext |
	targetContext := someObjectWithCommandContext 
		createCommandContextForCursorAt: anEvent cursorPoint.
	
	self executeCommandInContext: targetContext.
	
	anEvent wasHandled: false