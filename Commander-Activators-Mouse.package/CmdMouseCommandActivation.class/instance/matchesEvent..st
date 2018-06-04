testing
matchesEvent: aMouseEvent
	
	(keyboardModifier isNil and: [ "shift is somehow ignored by first check logic"
		aMouseEvent anyModifierKeyPressed | aMouseEvent shiftPressed]) ifTrue: [ ^false ].
	
	(keyboardModifier notNil and: [ (keyboardModifier matchesEvent: aMouseEvent) not ])
		ifTrue: [ ^false ].
	
	^aMouseEvent whichButton anyMask: whichButton