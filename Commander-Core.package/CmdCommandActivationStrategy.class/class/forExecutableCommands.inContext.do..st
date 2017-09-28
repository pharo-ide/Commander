commands enumeration
forExecutableCommands: aCommandClass inContext: aToolContext do: blockWithActivation

	self 
		forAllCommandsInContext: aToolContext 
		do: [:activationStrategy |
			((activationStrategy annotates: aCommandClass) 
				and: [ activationStrategy canExecuteCommandInContext: aToolContext  ])
					ifTrue: [ blockWithActivation value: activationStrategy]]