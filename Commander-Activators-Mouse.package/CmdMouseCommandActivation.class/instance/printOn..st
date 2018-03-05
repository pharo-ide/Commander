printing
printOn: aStream
	super printOn: aStream.
	
	aStream nextPut: $(.
	self isActionButton 
		ifTrue: [ aStream nextPutAll: 'action' ]
		ifFalse: [ aStream nextPutAll: 'context' ].
	keyboardModifier ifNotNil: [ 
		aStream nextPutAll: ' '.
		keyboardModifier printOn: aStream ].
	aStream nextPut: $).