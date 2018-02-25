*Commander-Activators-ContextMenu
registerContextMenuItemsWithBuilder: aBuilder

	self isInlined ifFalse: [ 
		self registerContextSubMenuWithBuilder: aBuilder].
	
	contents do: [ :each | 
		each registerContextMenuItemsWithBuilder: aBuilder ]