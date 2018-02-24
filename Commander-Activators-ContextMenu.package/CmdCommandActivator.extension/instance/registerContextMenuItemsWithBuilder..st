*Commander-Activators-ContextMenu
registerContextMenuItemsWithBuilder: aBuilder
	
	self canExecuteCommand ifFalse: [ ^self ].
	
	command registerContextMenuItemsWithBuilder: aBuilder using: self