printing
printOn: aStream
	super printOn: aStream.
	
	aStream nextPut: $(.
	aStream nextPutAll: self printWhichButton.
	keyboardModifier ifNotNil: [ 
		aStream nextPutAll: ' '.
		keyboardModifier printOn: aStream ].
	aStream nextPut: $).