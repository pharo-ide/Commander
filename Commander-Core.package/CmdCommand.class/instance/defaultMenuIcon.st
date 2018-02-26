accessing
defaultMenuIcon
	"By default the result is nil which is not really nice 
	but it is already expected by many tools.	So it is easy to allow nil.
	For simple cases users should implement class side method #defaultMenuIconName"
	^self class defaultMenuIconName ifNotNil: [ :iconName | 
		Smalltalk ui iconNamed: iconName ]