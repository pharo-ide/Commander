testing
canBeDroppedInContext: aToolContext

	^dropActivators anySatisfy: [ :each | 
		each canExecuteDropInContext: aToolContext]