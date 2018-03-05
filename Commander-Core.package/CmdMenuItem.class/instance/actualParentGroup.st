accessing
actualParentGroup
	parentGroup isRoot ifTrue: [ ^parentGroup ].
	
	^parentGroup isInlined 
		ifTrue: [ parentGroup actualParentGroup ]
		ifFalse: [ parentGroup]