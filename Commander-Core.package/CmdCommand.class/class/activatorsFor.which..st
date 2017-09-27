accessing
activatorsFor: aToolContext which: conditionBlock

	| result |
	result := OrderedCollection new.
	
	self activatorsFor: aToolContext which: conditionBlock do: [ :each | 
		result add: each ].
	
	^result