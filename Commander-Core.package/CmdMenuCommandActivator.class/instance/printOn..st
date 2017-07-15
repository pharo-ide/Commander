printing
printOn: aStream
	super printOn: aStream.
	aStream nextPut: $(.
	menuGroup printOn: aStream.
	aStream nextPutAll: '; '.
	menuItemOrder printOn: aStream.
	aStream nextPut: $).