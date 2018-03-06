testing
isActiveInContext: aToolContext
	| mouseEvent |
	mouseEvent := ActiveHand lastEvent.
	
	^(self matchesEvent: mouseEvent)
		and: [super isActiveInContext: aToolContext]