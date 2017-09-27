tests
testSimilarToAnotherStrategyForSameKindOfCommandAndContext

	| activation1 activation2 |
	activation1 := CmdCommandActivationExample for: CmdToolContextStub2 command: CmdCommandExampleWith3Activators.

	activation2 := CmdCommandActivationExample for: CmdToolContextStub2 command: CmdCommandExampleWith3Activators.

	self assert:  (activation1 isSimilarTo: activation2).