dropping
dropInContext: aToolContext
	| targetActivator |
	targetActivator := dropActivators detect: [ :each | 
		each canExecuteDropInContext: aToolContext].
	
	targetActivator executeDropInContext: aToolContext.
	
	^true