tests
testCreationNewForContext

	| activator newActivator context |
	activator := CmdCommandExampleWithThreeActivators activators anyOne.
	
	context := CmdToolContextStub new.
	newActivator := activator newActivationFor: context.
	self deny: newActivator == activator.
	self assert: newActivator class equals: activator class.
	self assert: newActivator id equals: activator id.
	self assert: newActivator actualActivationContext equals: context.
	
	self deny: newActivator command = activator command.
	self assert: newActivator command class equals: CmdCommandExampleWithThreeActivators.
	self assert: newActivator command savedParametersContext equals: context