accessing
findOtherActivatorsWhich: aBlock

	| result |
	result := OrderedCollection new.
	
	self commandClass 
		activatorsFor: actualActivationContext which: aBlock do: [:each | result add: each ].
	
	^result