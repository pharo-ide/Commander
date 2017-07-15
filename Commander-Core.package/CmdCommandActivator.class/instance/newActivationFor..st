activation
newActivationFor: aToolContext
	
	| commandForExecution |
	commandForExecution := command copy.
	aToolContext prepareNewCommand: commandForExecution.
	^self copy
		command: commandForExecution;
		actualActivationContext: aToolContext