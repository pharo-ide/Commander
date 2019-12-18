Extension { #name : #CmdCommandActivator }

{ #category : #'*Commander-Activators-ContextMenu' }
CmdCommandActivator >> buildContextMenu: aMenu [
	
	self canExecuteCommand ifFalse: [ ^self ].
	
	command fillContextMenu: aMenu using: self
]

{ #category : #'*Commander-Activators-ContextMenu' }
CmdCommandActivator >> registerContextMenuItemsFor: aCommandItem withBuilder: aBuilder [
	
	self canExecuteCommand ifFalse: [ ^self ].
	
	command registerContextMenuItemsFor: aCommandItem withBuilder: aBuilder
]

{ #category : #'*Commander-Activators-ContextMenu' }
CmdCommandActivator >> setUpShortcutTipForMenuItem: aMenuItemMorph [
	| keyText |
	
	CmdShortcutActivation 
		activeInstancesFor: command class inContext: context
		do: [ :shortcut |  	
			keyText := shortcut keyCombination printString copyReplaceAll: KMModifier meta name with: OSPlatform current defaultModifier name.
			aMenuItemMorph keyText: keyText]
]
