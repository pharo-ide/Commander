tests
testCollectingActivations

	| activators |
	activators := CmdCommand1Stub collectActivators.
	
	self assert: activators size equals: 3.
	self assert: activators first id equals: #view1Activator.
	self assert: activators first activationContextClass equals: CmdToolContextStub1.
	self assert: activators first commandClass equals: CmdCommand1Stub.
	self assert: activators second id equals: #view2Activator.
	self assert: activators second activationContextClass equals: CmdToolContextStub1.
	self assert: activators second commandClass equals: CmdCommand1Stub.
	self assert: activators last id equals: #view3Activator.
	self assert: activators last activationContextClass equals: CmdToolContextExtendingStub2.
	self assert: activators last commandClass equals: CmdCommand1Stub.