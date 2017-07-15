tests
testBuildFromSingleCommandWhichShouldBeInDeepChildGroup
	| menu group1 deepGroup |
	menu := self 
		buildMenuFromHierarchyOf: CmdCommand4StubInDeepMenuGroup
		for: #tool 
		inContext: CmdToolContextStub2 new.
	
	self assert: menu rootGroup size equals: 1.
	group1 := menu rootGroup contents first.
	self assert: group1 class equals: CmdDeepChildMenuGroupStub parentGroup.
	self assert: group1 size equals: 1.
	deepGroup := group1 contents first.
	self assert: deepGroup class equals: CmdDeepChildMenuGroupStub.
	self assert: deepGroup size equals: 1.
	self assert: deepGroup commands first class equals: CmdCommand4StubInDeepMenuGroup