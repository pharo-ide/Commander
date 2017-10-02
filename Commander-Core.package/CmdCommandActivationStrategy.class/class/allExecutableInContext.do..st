accessing
allExecutableInContext: aToolContext do: blockWithActivation

	self 
		allAvailableInContext: aToolContext 
		do: [:activationStrategy |
			(activationStrategy canExecuteCommandInContext: aToolContext) 
				ifTrue: [ blockWithActivation value: activationStrategy]]