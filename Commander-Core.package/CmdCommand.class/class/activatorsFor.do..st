accessing
activatorsFor: aToolContext do: aBlock 
	self activatorsDo: [ :each | 
		(each canBeUsedInContext: aToolContext) ifTrue: [aBlock value: each]]