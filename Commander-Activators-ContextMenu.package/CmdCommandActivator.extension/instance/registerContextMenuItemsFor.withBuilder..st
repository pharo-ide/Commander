*Commander-Activators-ContextMenu
registerContextMenuItemsFor: aCommandItem withBuilder: aBuilder
	
	self canExecuteCommand ifFalse: [ ^self ].
	
	command registerContextMenuItemsFor: aCommandItem withBuilder: aBuilder