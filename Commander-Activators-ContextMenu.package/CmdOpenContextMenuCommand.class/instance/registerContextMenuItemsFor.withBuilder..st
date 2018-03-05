context menu
registerContextMenuItemsFor: aCommandItem withBuilder: aBuilder
	"Here we need to take care because this command itself is added to menu of same context.
	So we will always enter into this method during submenu generation. 
	We catch this recursion using RecursionStopper. 
	It is easier than adding extra logic to menu registration process"	
	| submenu |
	RecursionStopper during: [ 		
		submenu := self activationStrategy buildMenuInContext: context.		 
		submenu isActive ifTrue: [ 					
			super registerContextMenuItemsFor: aCommandItem withBuilder: aBuilder.
			"Registration builder uses #name to bind children to parent"
			submenu rootGroup name: aCommandItem name.
			submenu registerContextMenuItemsWithBuilder: aBuilder]		
	]