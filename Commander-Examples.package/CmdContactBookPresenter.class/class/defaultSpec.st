examples
defaultSpec

	^ SpecLayout composed
		newColumn: [ :column |
			column add: #table];
		yourself