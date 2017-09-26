accessing
activatorsDo: aBlock
	^self metaAnnotationsDo: [ :each | 
		(each isKindOf: CmdCommandActivator) ifTrue: [ aBlock value: each ] ]