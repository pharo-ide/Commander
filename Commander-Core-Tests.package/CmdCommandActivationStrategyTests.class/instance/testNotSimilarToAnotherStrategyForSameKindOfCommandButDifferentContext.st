tests
testNotSimilarToAnotherStrategyForSameKindOfCommandButDifferentContext

	| activation1 activation2 |
	activation1 := CmdCommandActivationExample for: CmdToolContextStub1 command: CmdCommandExampleWith3Activators.

	activation2 := CmdCommandActivationExample for: CmdToolContextStub2 command: CmdCommandExampleWith3Activators.

	self deny:  (activation1 isSimilarTo: activation2).