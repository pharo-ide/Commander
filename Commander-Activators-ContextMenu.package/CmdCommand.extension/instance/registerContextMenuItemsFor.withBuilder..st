*Commander-Activators-ContextMenu
registerContextMenuItemsFor: aCommandItem withBuilder: aBuilder
	| item itemOrder |
	itemOrder := aCommandItem order.
	aCommandItem parentGroup isRoot not & aCommandItem parentGroup isInlined ifTrue: [ 
		"When we are inlining we should try keep order according to the order of parent.
		So we just put item order as deimal addition to parent order"
		itemOrder := aCommandItem parentGroup order + (itemOrder / 10000000.0)].
	item := (aBuilder item: aCommandItem name)
		parent: aCommandItem actualParentGroup name;
		order: itemOrder;
		help: aCommandItem description;
		action: [aCommandItem executeCommand]. 
	
	aCommandItem setUpShortcutTipForMenuItem: item.
	self setUpIconForMenuItem: item