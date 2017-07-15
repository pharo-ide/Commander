accessing
activatorsFor: aToolContext do: aBlockClosure 
	self activators 
		select: [ :each | each canBeUsedInContext: aToolContext]
		thenDo: aBlockClosure 