tests
testBuildForMoreTagsThanDescribedInCommand
	| menu command |
	menu := self 
		buildMenuFromHierarchyOf: CmdCommand1Stub 
		for: #tool 
		inContext: CmdToolContextExtendingStub2 new.
	 
	self assert: menu rootGroup size equals: 1.
	command := menu rootGroup commands first.
	self assert: command class equals: CmdCommand1Stub