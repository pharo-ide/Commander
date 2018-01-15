testing
canExecuteDropInContext: aToolContext

	^(activationStrategy isDropActiveInContext: aToolContext)
		and: [  aToolContext allowsDropExecutionOf: command ]