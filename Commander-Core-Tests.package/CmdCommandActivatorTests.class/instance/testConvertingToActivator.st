tests
testConvertingToActivator

	| activator |
	activator := CmdCommandActivator new.
	
	self assert: activator asCommandActivator == activator