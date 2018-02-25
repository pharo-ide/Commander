building menu
registerMenuOn: aBuilder inContext: aToolContext

	| menu |
	menu := CmdMenu activatedBy: CmdContextMenuCommandActivation.
	menu buildInContext: aToolContext.
	
	menu registerContextMenuItemsWithBuilder: aBuilder