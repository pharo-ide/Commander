instance creation
byItem: itemName of: menuGroupClass order: aNumber for: aToolContextClass
	^(self byItemOf: menuGroupClass order: aNumber for: aToolContextClass)
		menuItemName: itemName