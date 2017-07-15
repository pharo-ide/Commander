initialization
initialize
	super initialize.
	contents := SortedCollection sortBlock: [ :a :b | 
		a order = b order 
			ifTrue: [ a name <= b name ]
			ifFalse: [ a order <= b order ]]