tests
testWhenGivenContextIsUnused
	| menu |
	menu := self buildMenuInContext: CmdUnusedToolContextStub new.
	
	self assert: menu rootGroup size equals: 0