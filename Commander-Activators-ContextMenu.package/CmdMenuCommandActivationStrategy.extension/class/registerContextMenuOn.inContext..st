*Commander-Activators-ContextMenu
registerContextMenuOn: aBuilder inContext: aToolContext
	| menu |
	menu := self buildMenuInContext: aToolContext.
	menu registerContextMenuItemsWithBuilder: aBuilder