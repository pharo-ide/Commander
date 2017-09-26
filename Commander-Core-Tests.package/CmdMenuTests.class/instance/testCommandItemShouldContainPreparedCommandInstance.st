tests
testCommandItemShouldContainPreparedCommandInstance
	| menu command context containingItems |
	context := CmdToolContextStub1 new.
	menu := self buildMenuInContext: context.
	containingItems := menu itemsWithCommandLike: CmdCommandExampleInRootMenu.
	self assert: containingItems last isCommandItem.
	
	command := containingItems last command.
	self assert: command class equals: CmdCommandExampleInRootMenu.
	self assert: command savedParametersContext equals: context.