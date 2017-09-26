tests
testNotSimilarToAnotherActivatorOfDifferentClass

	| activator1 activator2 |
	activator1 := CmdCommandActivatorExample new.
	activator2 := CmdMenuCommandActivatorExample new.
	
	self deny:  (activator1 isSimilarTo: activator2).