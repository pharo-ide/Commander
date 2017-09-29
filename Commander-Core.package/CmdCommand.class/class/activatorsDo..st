accessing
activatorsDo: aBlock
	^self classAnnotationsDo: [ :each | 
		(each isKindOf: CmdCommandActivationStrategy) ifTrue: [ aBlock value: each ] ]