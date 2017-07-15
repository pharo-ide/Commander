*Commander-Activators-ContextMenu
buildContextMenuFor: aMorph

	| menu |
	menu := UIManager default newMenuIn: aMorph for: aMorph.

	rootGroup buildContextMenu: menu.
	
	^menu