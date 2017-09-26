accessing
activators
	^self metaAnnotations select: [ :each | each isKindOf: CmdCommandActivator ]