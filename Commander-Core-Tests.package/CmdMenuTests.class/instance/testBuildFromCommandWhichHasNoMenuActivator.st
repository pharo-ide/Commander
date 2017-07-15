tests
testBuildFromCommandWhichHasNoMenuActivator
	| menu |
	menu := self 
		buildMenuFromHierarchyOf: CmdCommand3StubWithoutMenu
		for: #tool 
		inContext: CmdToolContextStub1 new.
	
	self assert: menu rootGroup size equals: 0