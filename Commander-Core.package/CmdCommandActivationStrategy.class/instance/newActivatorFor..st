activation
newActivatorFor: aToolContext
	
	^self defaultActivatorClass
		for: self commandClass
		inContext: aToolContext 
		using: self