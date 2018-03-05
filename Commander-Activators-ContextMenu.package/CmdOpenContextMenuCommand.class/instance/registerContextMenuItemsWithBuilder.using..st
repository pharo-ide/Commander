context menu
registerContextMenuItemsWithBuilder: aBuilder using: aCommandActivator
	"Here we need to take care because this command itself is added to menu of same context.
	So we will always enter into this method during submenu generation. 
	We catch this recursion using RecursionStopper. 
	It is easier than adding extra logic to menu registration process"	
	| submenu |
	RecursionStopper during: [ 		
		submenu := self activationStrategy buildMenuInContext: context.		 
		submenu isActive ifTrue: [ 					
			super registerContextMenuItemsWithBuilder: aBuilder using: aCommandActivator.
			"Registration builder uses #name to bind children to parent"
			submenu rootGroup name: aCommandActivator menuItemName.
			submenu registerContextMenuItemsWithBuilder: aBuilder]		
	]