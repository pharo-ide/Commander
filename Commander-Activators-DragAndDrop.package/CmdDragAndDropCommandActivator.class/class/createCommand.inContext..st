instance creation
createCommand: aCommandClass inContext: aToolContext
	| command |
	command := super createCommand: aCommandClass inContext: aToolContext.
	aToolContext prepareDragActivationOf: command.
	^command