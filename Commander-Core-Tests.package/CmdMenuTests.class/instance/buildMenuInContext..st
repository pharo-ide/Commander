tests
buildMenuInContext: aToolContext
	| menu |
	menu := CmdMenu  
		activatedBy: CmdMenuCommandActivationExample.
	
	menu buildInContext: aToolContext.
	
	^menu