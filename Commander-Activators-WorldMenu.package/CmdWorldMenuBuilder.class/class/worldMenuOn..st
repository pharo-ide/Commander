world menu
worldMenuOn: aBuilder 
	<worldMenu>

	| menu |
	menu := CmdMenu activatedBy: CmdContextMenuCommandActivation.
	menu buildInContext: (CmdWorldMenuContext for: World).
	
	menu registerContextMenuItemsWithBuilder: aBuilder 