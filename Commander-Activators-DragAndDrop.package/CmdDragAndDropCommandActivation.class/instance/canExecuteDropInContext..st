testing
canExecuteDropInContext: aToolContext

	^(dropContextDefinition describes: aToolContext)
		and: [ aToolContext allowsDropExecutionOf: self commandClass]