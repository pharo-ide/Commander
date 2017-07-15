tests
testCollectingActivationsOfAbstractClass

	| activators |
	self assert: CmdCommandSuperclassStub isAbstract.
	
	activators := CmdCommandSuperclassStub collectActivators.
	
	self assert: activators size equals: 0.