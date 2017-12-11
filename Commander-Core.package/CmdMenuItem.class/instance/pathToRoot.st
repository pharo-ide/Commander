accessing
pathToRoot
	^parentGroup 
		ifNil: [ ^#() ]
		ifNotNil: [ parentGroup pathToRoot, {parentGroup} ]