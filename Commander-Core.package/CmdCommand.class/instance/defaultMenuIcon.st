accessing
defaultMenuIcon
	^self class defaultMenuIconName ifNotNil: [ :iconName | 
		Smalltalk ui iconNamed: iconName ]