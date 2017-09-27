accessing
activators
	^self metaAnnotations select: [ :each | each isKindOf: CmdCommandActivationStrategy ]