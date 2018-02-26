*Commander-Activators-ContextMenu
registerContextMenuItemsFor: aCommandItem withBuilder: aBuilder
	
	self canExecuteCommand ifFalse: [ ^self ].
	
	command registerContextMenuItemsWithBuilder: aBuilder using: self.
	aBuilder currentItem parent: aCommandItem parentGroup name