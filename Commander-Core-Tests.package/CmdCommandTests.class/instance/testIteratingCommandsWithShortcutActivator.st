tests
testIteratingCommandsWithShortcutActivator

	| activators context |
	context := CmdToolContextStub1 new.
	activators := OrderedCollection new.
	CmdRootCommandStub 
		allCommandsFor: context withActivator: CmdShortcutCommandActivator
		do: [:activator | activators add: activator].
	
	self assert: activators size equals: 1.
	self assert: activators first commandClass equals: CmdCommand3StubWithoutMenu