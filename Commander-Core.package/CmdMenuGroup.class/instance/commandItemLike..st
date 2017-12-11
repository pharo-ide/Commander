accessing
commandItemLike: aCommandClass

	^contents detect: [ :each | 
		each isCommandItem and: [ each includesCommand: aCommandClass ]]