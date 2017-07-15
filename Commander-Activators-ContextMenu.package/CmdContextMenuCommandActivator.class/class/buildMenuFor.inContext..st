building menu
buildMenuFor: aMorph inContext: aToolContext

	| menu |
	menu := CmdMenu activatedBy: CmdContextMenuCommandActivator.
	menu buildInContext: aToolContext.
	
	^menu buildContextMenuFor: aMorph