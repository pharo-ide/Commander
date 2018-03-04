context menu
fillContextMenu: aMenu using: aCommandActivator
	| submenu item |
	
	submenu := self createContextMenu.
	submenu hasItems ifFalse: [ ^self ].
	 
	item := aMenu 
		add: aCommandActivator menuItemName icon: aCommandActivator menuItemIcon subMenu: submenu.
	aCommandActivator setUpShortcutTipForMenuItem: item.
	self setUpIconForMenuItem: item.
	self description ifNotNil: [:d | item setBalloonText: d]