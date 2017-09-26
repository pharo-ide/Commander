tests
testCreationNewForContext

	| activator newActivator context |
	activator := CmdCommand1Stub metaAnnotations anyOne.
	
	context := CmdToolContextStub new.
	newActivator := activator newActivationFor: context.
	self deny: newActivator == activator.
	self assert: newActivator class equals: activator class.
	self assert: newActivator id equals: activator id.
	self assert: newActivator actualActivationContext equals: context.
	
	self deny: newActivator command = activator command.
	self assert: newActivator command class equals: CmdCommand1Stub.
	self assert: newActivator command savedParametersContext equals: context