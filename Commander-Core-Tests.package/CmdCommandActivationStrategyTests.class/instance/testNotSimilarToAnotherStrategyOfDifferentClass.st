tests
testNotSimilarToAnotherStrategyOfDifferentClass

	| activation1 activation2 |
	activation1 := CmdCommandActivationExample new.
	activation2 := CmdMenuCommandActivationExample new.
	
	self deny:  (activation1 isSimilarTo: activation2).