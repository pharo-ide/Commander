accessing
collectActivatorsFromAllSuperclasses
		
	| result superclassActivations |
	result := IdentityDictionary new.
	{ self }, self allSuperclasses do: [ :eachClass | 
		eachClass = Object ifTrue: [ ^result ].
		superclassActivations := self collectActivatorsFrom: eachClass.
		superclassActivations do: [:each | result at: each id ifAbsentPut: [ each ] ]
	].
	^result