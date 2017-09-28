tests
testIteratingInstancesDeclaredForContextWhichIsExtendedByGivenContext

	| activators context commandClasses |
	context := CmdToolContextExtendingStub2 new.
	activators := OrderedCollection new.
	CmdCommandActivationExample  
		forAllCommandsInContext: context
		do: [:activator | activators add: activator].
	
	self assert: activators size equals: 2.
	commandClasses := activators collect: [ :each | each commandClass ] as: Set.
	self assert: commandClasses equals: { CmdCommandExampleWith3Activators. CmdCommandExampleForExtendedContext } asSet