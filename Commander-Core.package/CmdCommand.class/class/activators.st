accessing
activators
	^self classAnnotations select: [ :each | each isKindOf: CmdCommandActivationStrategy ]