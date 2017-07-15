accessing
commands
	^contents 
		select: [ :each | each isKindOf: CmdCommandMenuItem ] 
		thenCollect: [ :each | each command ]