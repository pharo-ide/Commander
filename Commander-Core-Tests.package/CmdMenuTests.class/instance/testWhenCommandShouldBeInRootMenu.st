tests
testWhenCommandShouldBeInRootMenu
	| menu containingItems |
	menu := self buildMenuInContext: CmdToolContextStub1 new.
	
	containingItems := menu groupsWithCommandLike: CmdCommandExampleInRootMenu.
	self assert: containingItems size equals: 1. "group and commandItem"
	self assert: containingItems first equals: menu rootGroup