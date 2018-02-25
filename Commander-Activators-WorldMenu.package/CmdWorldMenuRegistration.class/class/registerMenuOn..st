world menu
registerMenuOn: aBuilder 
	<worldMenu>

	| menu |
	menu := CmdMenu activatedBy: CmdContextMenuCommandActivation.
	menu buildInContext: self createWorldContext.
	
	menu registerContextMenuItemsWithBuilder: aBuilder 