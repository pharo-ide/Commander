tests
buildMenuInContext: aToolContext
	| menu |
	menu := CmdMenu  
		activatedBy: CmdMenuCommandActivatorExample.
	
	menu buildInContext: aToolContext.
	
	^menu