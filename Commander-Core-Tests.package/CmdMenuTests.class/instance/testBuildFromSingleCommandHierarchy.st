tests
testBuildFromSingleCommandHierarchy
	| menu command context |
	context := CmdToolContextStub1 new.
	menu := self 
		buildMenuFromHierarchyOf: CmdCommand1Stub
		for: #tool 
		inContext: context.
	
	self assert: menu rootGroup size equals: 2.
	command := menu rootGroup commands first.
	self assert: command class equals: CmdCommand1Stub.
	self assert: command savedParametersContext equals: context.