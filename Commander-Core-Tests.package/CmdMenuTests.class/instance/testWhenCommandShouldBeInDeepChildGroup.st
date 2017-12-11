tests
testWhenCommandShouldBeInDeepChildGroup
	| menu containingItems parents |
	menu := self buildMenuInContext: CmdToolContextStub2 new.
	
	containingItems := menu itemsWithCommandLike: CmdCommandExampleInDeepMenuGroup.
	self assert: containingItems size equals: 2. "group and commandItem"
	self assert: containingItems last isCommandItem.
	
	parents := containingItems last pathToRoot collect: #class.
	self assert: parents equals: {CmdRootMenuGroup. CmdMenuGroupExample2. CmdDeepChildMenuGroupStub }