updating
synchronizeContentWith: anotherGroup

	contents removeAllSuchThat: [ :each | (anotherGroup includes: each) not].
	anotherGroup contents do: [ :each | 
		self 
			findItemSimilarTo: each
			ifPresent: [ :existing | 
				existing synchronizeContentWith: each.
				existing isEmpty ifTrue: [ self removeItem: existing ] ]
			ifAbsent: [ self addItem: each]]