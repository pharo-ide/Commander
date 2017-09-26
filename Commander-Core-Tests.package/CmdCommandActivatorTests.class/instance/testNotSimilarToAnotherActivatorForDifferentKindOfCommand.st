tests
testNotSimilarToAnotherActivatorForDifferentKindOfCommand

	| declaredActivator activator1 activator2 context |
	declaredActivator := CmdCommandActivatorExample for: CmdToolContextStub2.
	declaredActivator annotatedClass: CmdCommandExampleWithThreeActivators.
	context := CmdToolContextStub2 new.
	activator1 := declaredActivator newActivationFor: CmdToolContextStub2 new.

	declaredActivator annotatedClass: CmdCommandExampleForExtendedContext.		
	activator2 := declaredActivator newActivationFor: context.
	
	self deny:  (activator1 isSimilarTo: activator2).