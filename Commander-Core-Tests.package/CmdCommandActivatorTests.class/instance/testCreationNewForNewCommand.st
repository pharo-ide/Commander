tests
testCreationNewForNewCommand

	| activator newActivator |
	activator := CmdCommand1Stub activators first.
	newActivator := activator newForCommand: #newCommand.

	self deny: newActivator == activator.
	self assert: newActivator class equals: activator class.
	self assert: newActivator command equals: #newCommand.
	self assert: newActivator actualActivationContext equals: activator actualActivationContext