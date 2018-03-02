building menu
buildMenuFor: aMorph inContext: aToolContext

	| menu |
	menu := CmdMenu activatedBy: self.
	menu buildInContext: aToolContext.
	
	^menu buildContextMenuFor: aMorph