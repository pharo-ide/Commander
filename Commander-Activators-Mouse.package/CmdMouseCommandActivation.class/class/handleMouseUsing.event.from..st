morphs setup
handleMouseUsing: someObjectWithCommandContext event: anEvent from: sourceMorph 
	| targetContext |
	targetContext := someObjectWithCommandContext 
		createCommandContextForCursorAt: anEvent cursorPoint.
	
	self activateAllInContext: targetContext by: [:activator | 
		^activator executeCommand ].
	
	anEvent wasHandled: false