*Commander-Activators-ContextMenu
registerContextMenuItemsWithBuilder: aBuilder

	self isActive ifFalse: [ ^self ].
	
	self isInlined
		ifFalse: [ self registerContextSubMenuWithBuilder: aBuilder].
	contents do: [ :each | 
		each registerContextMenuItemsWithBuilder: aBuilder ].
	
	"self isInlined ifTrue: [ aBuilder withSeparatorAfter ]"