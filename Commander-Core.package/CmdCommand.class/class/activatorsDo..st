accessing
activatorsDo: aBlock
	^self metaAnnotationsDo: [ :each | 
		(each isKindOf: CmdCommandActivationStrategy) ifTrue: [ aBlock value: each ] ]