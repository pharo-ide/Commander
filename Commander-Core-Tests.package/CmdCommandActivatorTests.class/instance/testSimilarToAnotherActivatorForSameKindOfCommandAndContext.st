tests
testSimilarToAnotherActivatorForSameKindOfCommandAndContext

	| declaredActivator activator1 activator2 |
	declaredActivator := CmdCommandActivationExample for: CmdToolContextStub2.
	declaredActivator annotatedClass: CmdCommandExampleWithThreeActivators.
	
	activator1 := declaredActivator newActivatorFor: CmdToolContextStub2 new.
	activator2 := declaredActivator newActivatorFor: activator1 actualActivationContext.
	
	self assert:  (activator1 isSimilarTo: activator2).