building menu items
buildContextMenu: aMenu

	self canExecuteCommand ifFalse: [ ^self ].
	
	command fillContextMenu: aMenu using: self