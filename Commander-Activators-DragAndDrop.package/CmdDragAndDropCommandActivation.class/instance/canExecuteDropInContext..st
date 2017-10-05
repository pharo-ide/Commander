testing
canExecuteDropInContext: aToolContext

	^(activeDropContext describes: aToolContext)
		and: [ aToolContext allowsDropExecutionOf: self commandClass]