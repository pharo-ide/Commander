testing
isSimilarTo: aMenuItem
	^self class == aMenuItem class and: [ 
		activator isSimilarTo: aMenuItem activator]