*Commander-Activators-ContextMenu
registerContextMenuItemsWithBuilder: aBuilder using: aCommandActivator
	| item |
	
	item := (aBuilder item: aCommandActivator menuItemName)
		order: aCommandActivator menuItemOrder;
		action: [aCommandActivator executeCommand]. 
	
	aCommandActivator setUpShortcutTipForMenuItem: item.
	self setUpIconForMenuItem: item