instance creation
byItemOf: menuGroupClass order: aNumber for: aToolContextClass
	^(self byItemOf: menuGroupClass for: aToolContextClass)
		menuItemOrder: aNumber