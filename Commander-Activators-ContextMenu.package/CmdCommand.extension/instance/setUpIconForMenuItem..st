*Commander-Activators-ContextMenu
setUpIconForMenuItem: aMenuItemMorph

	self defaultMenuIcon ifNotNil: [:icon |
		aMenuItemMorph icon: icon ]