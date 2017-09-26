accessing
allItemsWhich: aBlock 
	| result |
	result := OrderedCollection new.
	
	contents do: [ :each | 
		(aBlock value: each) ifTrue: [ result add: each ].
		each isCommandItem ifFalse: [ 
			result addAll: (each allItemsWhich: aBlock) ]].
		
	^result