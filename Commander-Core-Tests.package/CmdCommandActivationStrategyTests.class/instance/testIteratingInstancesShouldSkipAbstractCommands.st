tests
testIteratingInstancesShouldSkipAbstractCommands

	| activators context |
	context := CmdToolContextStub1 new.
	activators := OrderedCollection new.
	CmdCommandActivationExample  
		visibleInstancesInContext: context
		do: [:activator | activators add: activator].
	
	self assert: activators size equals: 1.
	self assert: activators first commandClass equals: CmdCommandExampleInheritedFromAbstract