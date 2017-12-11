building menu
buildMenuFor: aMorph inContext: aToolContext

	| menu |
	menu := CmdMenu activatedBy: CmdContextMenuCommandActivation.
	menu buildInContext: aToolContext.
	
	^menu buildContextMenuFor: aMorph