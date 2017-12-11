accessing
allGroupsWhich: aBlock 
	| result |
	result := OrderedCollection new.
	
	contents 
		reject: [ :each | each isCommandItem ]
		thenDo: [ :each | 
			(aBlock value: each) ifTrue: [ result add: each ].
			result addAll: (each allGroupsWhich: aBlock) ].
		
	^result