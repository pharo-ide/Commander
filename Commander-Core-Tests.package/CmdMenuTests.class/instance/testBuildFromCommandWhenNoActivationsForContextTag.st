tests
testBuildFromCommandWhenNoActivationsForContextTag
	| menu |
	menu := self 
		buildMenuFromHierarchyOf: CmdCommand1Stub 
		for: #tool 
		inContext: CmdUnusedToolContextStub new.
	
	self assert: menu rootGroup size equals: 0