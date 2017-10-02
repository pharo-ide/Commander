tests
testCreationNewActivatorForGivenContext
	| activation context actual |
	activation := CmdCommandActivationExample withAnnotatedClass: CmdCommandExampleWith3Activators.
	context := CmdToolContextStub new.
	
	actual := activation newActivatorFor: context.
	
	self assert: actual class equals: CmdCommandActivator.
	self assert: actual activationStrategy equals: activation.
	self assert: actual context equals: context.
	self assert: actual command class equals: CmdCommandExampleWith3Activators.
	self assert: actual command savedParametersContext equals: context