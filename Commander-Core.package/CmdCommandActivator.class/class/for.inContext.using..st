instance creation
for: aCommandClass inContext: aToolContext using: aCommandActivationStrategy
	| command |
	command := aCommandClass new.
	aToolContext prepareNewCommand: command.
	
	^self new 
		command: command;
		context: aToolContext