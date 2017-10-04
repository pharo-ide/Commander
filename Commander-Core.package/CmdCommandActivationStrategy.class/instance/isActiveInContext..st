testing
isActiveInContext: aToolContext
	^(super isActiveInContext: aToolContext)
		and: [ aToolContext allowsExecutionOf: self commandClass]