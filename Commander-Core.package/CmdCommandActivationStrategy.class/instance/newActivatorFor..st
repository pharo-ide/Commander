activation
newActivatorFor: aToolContext
	
	^self commandClass defaultActivatorClass
		for: self commandClass
		inContext: aToolContext 
		using: self