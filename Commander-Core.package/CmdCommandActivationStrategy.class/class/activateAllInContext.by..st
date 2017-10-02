activation
activateAllInContext: aToolContext by: blockWithActivator

	self 
		allExecutableInContext: aToolContext 
		do: [:activationStrategy | 
			blockWithActivator value: (activationStrategy newActivatorFor: aToolContext)]