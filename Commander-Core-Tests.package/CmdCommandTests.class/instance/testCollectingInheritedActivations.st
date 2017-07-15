tests
testCollectingInheritedActivations

	| activators |
	activators := CmdCommandSubclassStub collectActivators.
	
	self assert: activators size equals: 3.
	self assert: activators first id equals: #view1OverriddenActivator.
	self assert: activators second id equals: #view1SubclassActivator.
	self assert: activators last id equals: #view1SuperclassActivator.	
	self assert: activators first menuGroup equals: CmdMenuGroup1Stub 