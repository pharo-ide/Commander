*Commander-Activators-ContextMenu
registerContextMenuItemsWithBuilder: aBuilder using: aCommandActivator
	| item |
	
	item := (aBuilder item: aCommandActivator menuItemName)
		order: aCommandActivator menuItemOrder;
		help: self description;
		action: [aCommandActivator executeCommand]. 
	
	aCommandActivator setUpShortcutTipForMenuItem: item.
	self setUpIconForMenuItem: item