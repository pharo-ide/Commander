instance creation
for: aCommandClass inContext: aToolContext using: aCommandActivationStrategy
	| command |
	command := self createCommand: aCommandClass inContext: aToolContext.
	
	^self new 
		command: command;
		context: aToolContext;
		activationStrategy: aCommandActivationStrategy