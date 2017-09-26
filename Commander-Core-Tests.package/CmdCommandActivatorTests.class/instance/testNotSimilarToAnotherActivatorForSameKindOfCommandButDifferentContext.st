tests
testNotSimilarToAnotherActivatorForSameKindOfCommandButDifferentContext

	| declaredActivator activator1 activator2 |
	declaredActivator := CmdCommandActivatorExample for: CmdToolContextStub2.
	declaredActivator annotatedClass: CmdCommandExampleWithThreeActivators.
	
	activator1 := declaredActivator newActivationFor: CmdToolContextStub2 new.
	activator2 := declaredActivator newActivationFor: CmdToolContextStub2 new.
	
	self deny:  (activator1 isSimilarTo: activator2).