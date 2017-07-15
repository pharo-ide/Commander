tests
testBuildFromCommandWhichSubclassAlsoProvidesActivations
	| menu |
	menu := self 
		buildMenuFromHierarchyOf: CmdCommandSubclassStub
		for: #tool 
		inContext: CmdToolContextStub1 new.
	
	self assert: menu rootGroup size equals: 3