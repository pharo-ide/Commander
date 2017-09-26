tests
testIteratingCommandsForExtendingContext

	| activators context commandClasses |
	context := CmdToolContextExtendingStub2 new.
	activators := OrderedCollection new.
	CmdRootCommandStub 
		allCommandsFor: context withActivator: CmdContextMenuCommandActivator
		do: [:activator | activators add: activator].
	
	self assert: activators size equals: 2.
	commandClasses := activators collect: [ :each | each commandClass ] as: Set.
	self assert: commandClasses equals: { CmdCommand1Stub. CmdCommandExampleInDeepMenuGroup } asSet