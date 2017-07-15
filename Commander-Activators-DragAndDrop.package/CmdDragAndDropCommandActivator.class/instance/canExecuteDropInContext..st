testing
canExecuteDropInContext: aToolContext

	^(aToolContext isActivationOf: dropContextClass)
		and: [ aToolContext allowsDropExecutionOf: command]