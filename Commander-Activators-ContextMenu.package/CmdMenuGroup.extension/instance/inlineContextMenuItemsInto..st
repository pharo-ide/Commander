*Commander-Activators-ContextMenu
inlineContextMenuItemsInto: aMenu

	aMenu addLine.
	
	contents do: [ :each | each buildContextMenu: aMenu ].
	
	aMenu addLine.