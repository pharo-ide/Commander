instance creation
for: dragAnnotationContext toDropIn: dropAnnotationContext
	^(self for: dragAnnotationContext)
		activeDropContext: dropAnnotationContext asAnnotationContext