accessing
allExecutableInContext: aToolContext for: aCommandClass do: blockWithActivation

	self 
		allAvailableInContext: aToolContext 
		do: [:activationStrategy |
			((activationStrategy annotates: aCommandClass) 
				and: [ activationStrategy canExecuteCommandInContext: aToolContext  ])
					ifTrue: [ blockWithActivation value: activationStrategy]]