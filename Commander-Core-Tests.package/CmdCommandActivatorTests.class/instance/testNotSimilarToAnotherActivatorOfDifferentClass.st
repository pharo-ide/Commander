tests
testNotSimilarToAnotherActivatorOfDifferentClass

	| activator1 activator2 |
	activator1 := CmdCommandActivationExample new.
	activator2 := CmdMenuCommandActivationExample new.
	
	self deny:  (activator1 isSimilarTo: activator2).