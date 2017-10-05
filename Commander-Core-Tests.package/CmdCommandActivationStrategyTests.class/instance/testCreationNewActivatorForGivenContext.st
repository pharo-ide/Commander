tests
testCreationNewActivatorForGivenContext
	| activation context actual |
	activation := CmdCommandActivationExample withAnnotatedClass: CmdCommandExampleInheritedFromAbstract.
	context := CmdToolContextStub new.
	
	actual := activation newActivatorFor: context.
	
	self assert: actual class equals: CmdCommandActivator.
	self assert: actual activationStrategy equals: activation.
	self assert: actual context equals: context.
	self assert: actual command class equals: CmdCommandExampleInheritedFromAbstract.
	self assert: actual command savedParametersContext equals: context