testing
canExecuteCommand

	^super canExecuteCommand and: [ activationStrategy canExecuteDropInContext: dropContext ]