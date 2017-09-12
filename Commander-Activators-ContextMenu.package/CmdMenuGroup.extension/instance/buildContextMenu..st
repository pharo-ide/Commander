*Commander-Activators-ContextMenu
buildContextMenu: aMenu

	self isInlined 
		ifTrue: [ self inlineContextMenuItemsInto: aMenu ]
		ifFalse: [ self buildContextSubMenuIn: aMenu ]
