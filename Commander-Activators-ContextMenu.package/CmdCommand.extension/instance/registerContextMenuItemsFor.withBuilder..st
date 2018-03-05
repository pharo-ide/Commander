*Commander-Activators-ContextMenu
registerContextMenuItemsFor: aCommandItem withBuilder: aBuilder
	| item |
	
	item := (aBuilder item: aCommandItem name)
		parent: aCommandItem actualParentGroup name;
		order: aCommandItem order;
		help: aCommandItem description;
		action: [aCommandItem executeCommand]. 
	
	aCommandItem setUpShortcutTipForMenuItem: item.
	self setUpIconForMenuItem: item