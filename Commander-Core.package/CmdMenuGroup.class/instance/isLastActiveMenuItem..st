testing
isLastActiveMenuItem: childMenuItem

	contents reverseDo: [ :each | 
		each isActive ifTrue: [ ^each == childMenuItem ] ].
	
	^false