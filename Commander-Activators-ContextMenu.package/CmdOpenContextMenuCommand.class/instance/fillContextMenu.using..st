context menu
fillContextMenu: aMenu using: aCommandActivator
	"Here we need to take care because this command itself is added to menu of same context.
	So we will always enter into this method during submenu generation. 
	We catch this recursion using RecursionStopper. 
	It is easier than adding extra logic to menu building process"	
	| submenu |
	RecursionStopper during: [ 
		submenu := self createContextMenu.
		submenu hasItems ifFalse: [ ^self ].
		
		super fillContextMenu: aMenu using: aCommandActivator.
		aMenu lastItem subMenu: submenu
	]