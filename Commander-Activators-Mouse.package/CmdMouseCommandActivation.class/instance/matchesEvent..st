testing
matchesEvent: aMouseEvent
	
	(keyboardModifier notNil and: [ (keyboardModifier matchesEvent: aMouseEvent) not ])
		ifTrue: [ ^false ].
		
	^aMouseEvent whichButton anyMask: whichButton