tests
testCreationNewForNewCommand

	| activator newActivator |
	activator := CmdCommandActivator new.
	activator 	
		command: #command;
		context: #context;
		activationStrategy: #activation.
	
	newActivator := activator newForCommand: #newCommand.

	self deny: newActivator == activator.
	self assert: newActivator class equals: activator class.
	self assert: newActivator command equals: #newCommand.
	self assert: newActivator context equals: #context.
	self assert: newActivator activationStrategy equals: #activation