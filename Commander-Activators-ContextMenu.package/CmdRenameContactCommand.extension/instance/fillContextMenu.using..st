*Commander-Activators-ContextMenu
fillContextMenu: aMenu using: aCommandActivator
	| item |
	item := aMenu 
		add: aCommandActivator menuItemName
		target: aCommandActivator 
		selector: #executeCommand.
		
	item color: Color red