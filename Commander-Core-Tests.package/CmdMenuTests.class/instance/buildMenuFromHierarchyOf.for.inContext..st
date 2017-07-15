tests
buildMenuFromHierarchyOf: aCommandClass for: aTool inContext: aToolContext
	| menu |
	menu := CmdMenu  
		activatedBy: CmdContextMenuCommandActivator
		fromHierarchyOf: aCommandClass.
	
	menu buildInContext: aToolContext.
	
	^menu