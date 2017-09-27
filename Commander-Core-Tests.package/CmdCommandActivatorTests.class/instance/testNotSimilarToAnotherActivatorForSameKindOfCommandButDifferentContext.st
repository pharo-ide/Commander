tests
testNotSimilarToAnotherActivatorForSameKindOfCommandButDifferentContext

	| declaredActivator activator1 activator2 |
	declaredActivator := CmdCommandActivationExample for: CmdToolContextStub2.
	declaredActivator annotatedClass: CmdCommandExampleWithThreeActivators.
	
	activator1 := declaredActivator newActivatorFor: CmdToolContextStub2 new.
	activator2 := declaredActivator newActivatorFor: CmdToolContextStub2 new.
	
	self deny:  (activator1 isSimilarTo: activator2).