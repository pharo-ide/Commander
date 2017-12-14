specs
defaultSpec

	^ SpecLayout composed
		newColumn: [ :column | 
			column add: #book1; add: #book2];
		yourself