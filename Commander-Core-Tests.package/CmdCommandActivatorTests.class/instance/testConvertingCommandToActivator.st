tests
testConvertingCommandToActivator

	| activator command |
	command := CmdCommandExampleInRootMenu new.
	
	activator := command asCommandActivator.
	
	self assert: activator class equals: CmdCommandActivator.
	self assert: activator command equals: command.
	self assert: activator context class equals: CmdNullToolContext.
	self assert: activator activationStrategy class equals: CmdManualActivationStrategy.
	self assert: activator activationStrategy commandClass equals: command class.