instance creation
createCommand: aCommandClass inContext: aToolContext
	| command |
	command := aCommandClass new.
	aToolContext prepareNewCommand: command.
	^command