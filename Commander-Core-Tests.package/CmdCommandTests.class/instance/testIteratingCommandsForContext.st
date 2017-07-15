tests
testIteratingCommandsForContext

	| activators context |
	context := CmdToolContextStub2 new.
	activators := OrderedCollection new.
	CmdRootCommandStub 
		allCommandsFor: context withActivator: CmdContextMenuCommandActivator
		do: [:activator | activators add: activator].
	
	self assert: activators size equals: 1.
	self assert: activators first commandClass equals: CmdCommand4StubInDeepMenuGroup