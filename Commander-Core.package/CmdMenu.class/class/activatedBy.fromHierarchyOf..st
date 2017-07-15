instance creation
activatedBy: aCommandActivatorClass fromHierarchyOf: rootCommandClass

	^(self activatedBy: aCommandActivatorClass)
		rootCommandClass: rootCommandClass