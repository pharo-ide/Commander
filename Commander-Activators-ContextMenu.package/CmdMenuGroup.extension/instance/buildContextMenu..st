*Commander-Activators-ContextMenu
buildContextMenu: aMenu

	| submenu |
	submenu := UIManager default newMenuIn: aMenu defaultTarget for: aMenu defaultTarget.
	
	contents do: [ :each | each buildContextMenu: submenu ].
	
	aMenu add: self name subMenu: submenu