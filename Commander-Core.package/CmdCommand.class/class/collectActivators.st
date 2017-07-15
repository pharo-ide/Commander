accessing
collectActivators
	self isAbstract ifTrue: [ ^activators := #() ].
	
	activators := self collectActivatorsFromAllSuperclasses.
	"sorting for convenience (for tests)"
	activators := activators asSortedCollection: [ :a :b | a id <= b id ].
	^activators := activators 
		collect: [:each | each command: self new ] 
		as: Array