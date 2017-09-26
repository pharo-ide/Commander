tests
testWhenCommandShouldBeInMultipleGroups
	| menu containingGroups |
	menu := self buildMenuInContext: CmdToolContextStub1 new.
	
	containingGroups := menu groupsWithCommandLike: CmdCommandExampleInMultipleMenuGroups.
	self 
		assert: (containingGroups collect: #class as: Set)
		equals: {CmdMenuGroupExample1. CmdMenuGroupExample2. CmdRootMenuGroup } asSet