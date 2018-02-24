*Commander-Activators-ContextMenu
buildContextSubMenuIn: aMenu

	| submenu |
	submenu := UIManager default newMenuIn: aMenu defaultTarget for: aMenu defaultTarget.
	
	contents do: [ :each | each buildContextMenu: submenu ].
	
	submenu hasItems ifTrue: [ 
		aMenu add: self name icon: self icon subMenu: submenu]