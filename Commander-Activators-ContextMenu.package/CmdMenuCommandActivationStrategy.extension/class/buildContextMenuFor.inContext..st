*Commander-Activators-ContextMenu
buildContextMenuFor: aMorph inContext: aToolContext

	| menu |
	menu := self buildMenuInContext: aToolContext.	
	^menu buildContextMenuFor: aMorph