tests
testNotSimilarToAnotherActivatorForDifferentKindOfCommand

	| declaredActivator activator1 activator2 context |
	declaredActivator := CmdCommandActivationExample for: CmdToolContextStub2.
	declaredActivator annotatedClass: CmdCommandExampleWithThreeActivators.
	context := CmdToolContextStub2 new.
	activator1 := declaredActivator newActivatorFor: CmdToolContextStub2 new.

	declaredActivator annotatedClass: CmdCommandExampleForExtendedContext.		
	activator2 := declaredActivator newActivatorFor: context.
	
	self deny:  (activator1 isSimilarTo: activator2).