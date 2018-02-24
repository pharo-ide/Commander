*Commander-Activators-ContextMenu
registerContextMenuItemsWithBuilder: aBuilder

	self registerContextSubMenuWithBuilder: aBuilder.
	
	contents do: [ :each | 
		each registerContextMenuItemsWithBuilder: aBuilder ]