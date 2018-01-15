testing
canExecuteCommand

	^super canExecuteCommand and: [ self canExecuteDropInContext: dropContext ]