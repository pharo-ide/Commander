tests
testSimilarToAnotherActivator

	| activator anotherActivator |
	activator := CmdCommand1Stub activators first 
		newActivationFor: CmdToolContextStub1 new.
	
	anotherActivator := activator.
	self assert:  (activator isSimilarTo: anotherActivator).
	
	anotherActivator := CmdCommand1Stub activators second
		newActivationFor: CmdToolContextExtendingStub2 new.
	self deny: activator actualActivationContext = anotherActivator actualActivationContext.
	self deny:  (activator isSimilarTo: anotherActivator).