testing
representsSimpleAnnotationUser: aToolClass

	^existingContexts anySatisfy: [:each |
		each representsSimpleAnnotationUser: aToolClass]