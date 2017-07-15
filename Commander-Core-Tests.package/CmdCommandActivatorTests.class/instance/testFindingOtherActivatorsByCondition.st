tests
testFindingOtherActivatorsByCondition

	| activator newActivator others |
	activator := CmdCommand1Stub activators first.
	self assert: activator id equals: #view1Activator.
	newActivator := activator newActivationFor: CmdToolContextStub1 new.	
		
	others := newActivator findOtherActivatorsWhich: [ :each | 
		each id = #view2Activator].
	
	self assert: others size equals: 1.
	self assert: others first id equals: #view2Activator