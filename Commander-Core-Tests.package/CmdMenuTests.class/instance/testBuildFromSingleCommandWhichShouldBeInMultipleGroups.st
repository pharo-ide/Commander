tests
testBuildFromSingleCommandWhichShouldBeInMultipleGroups
	| menu command group1 group2 |
	menu := self 
		buildMenuFromHierarchyOf: CmdCommand2Stub
		for: #tool 
		inContext: CmdToolContextStub1 new.
	
	self assert: menu rootGroup size equals: 3.
	command := menu rootGroup commands first.
	self assert: command class equals: CmdCommand2Stub.
	group1 := menu rootGroup contents second.
	self assert: group1 class equals: CmdMenuGroup1Stub.
	self assert: group1 size equals: 1.
	self assert: group1 commands first class equals: CmdCommand2Stub.
	group2 := menu rootGroup contents last.
	self assert: group2 class equals: CmdMenuGroup2Stub.
	self assert: group2 size equals: 1.
	self assert: group2 commands first class equals: CmdCommand2Stub