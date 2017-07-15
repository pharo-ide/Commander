tests
testBuildFromMultipleCommandHierarchy
	| menu |
	menu := self 
		buildMenuFromHierarchyOf: CmdRootCommandStub
		for: #tool 
		inContext: CmdToolContextStub1 new.
	
	self assert: menu rootGroup size equals: 5.
	self assert: menu rootItems first command class equals: CmdCommand1Stub.
	self assert: menu rootItems second command class equals: CmdCommand2Stub.
	self assert: menu rootItems third class equals: CmdMenuGroup1Stub.
	self assert: menu rootItems third size equals: 2.	
	self assert: menu rootItems fourth class equals: CmdMenuGroup2Stub.
	self assert: menu rootItems last command class equals: CmdCommand1Stub.