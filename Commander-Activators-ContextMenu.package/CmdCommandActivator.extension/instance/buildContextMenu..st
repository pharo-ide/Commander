*Commander-Activators-ContextMenu
buildContextMenu: aMenu
	
	self canExecuteCommand ifFalse: [ ^self ].
	
	command fillContextMenu: aMenu using: self