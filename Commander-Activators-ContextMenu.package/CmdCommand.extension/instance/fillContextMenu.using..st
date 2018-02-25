*Commander-Activators-ContextMenu
fillContextMenu: aMenu using: aCommandActivator
	| item |
	
	item := aMenu 
		add: aCommandActivator menuItemName
		target: aCommandActivator 
		selector: #executeCommand.
	
	aCommandActivator setUpShortcutTipForMenuItem: item.
	self setUpIconForMenuItem: item.
	self description ifNotNil: [:d | item setBalloonText: d]