activation
activateAllInContext: aToolContext by: blockWithActivator

	self 
		activeInstancesInContext: aToolContext 
		do: [:activationStrategy | 
			blockWithActivator value: (activationStrategy newActivatorFor: aToolContext)]