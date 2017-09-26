tests
testFindingOtherActivatorsByCondition

	| activator newActivator others |
	activator := CmdCommandExampleWithThreeActivators activators 
		detect: [:each | each activationContextClass = CmdToolContextStub1].
	newActivator := activator newActivationFor: CmdToolContextStub1 new.	
		
	others := newActivator findOtherActivatorsWhich: [ :each | 
		each declarationSelector ~~ activator declarationSelector].
	
	self assert: others size equals: 1.
	self assert: others first declarationSelector ~~ activator declarationSelector