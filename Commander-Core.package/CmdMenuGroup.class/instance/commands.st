accessing
commands
	^contents 
		select: [ :each | each isCommandItem ] 
		thenCollect: [ :each | each command ]