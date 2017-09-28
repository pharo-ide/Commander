commands enumeration
forExecutableCommandsInContext: aToolContext doWithActivator: blockWithActivator

	self 
		forExecutableCommandsInContext: aToolContext 
		do: [:activationStrategy | 
			blockWithActivator value: (activationStrategy newActivatorFor: aToolContext)]