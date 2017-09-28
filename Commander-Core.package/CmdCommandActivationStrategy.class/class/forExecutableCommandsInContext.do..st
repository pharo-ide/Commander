commands enumeration
forExecutableCommandsInContext: aToolContext do: blockWithActivator

	self 
		forAllCommandsInContext: aToolContext 
		do: [:activationStrategy |
			(activationStrategy canExecuteCommandInContext: aToolContext) 
				ifTrue: [ blockWithActivator value: activationStrategy]]