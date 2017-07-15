accessing
menuItemName
	^ menuItemName ifNil: [ command defaultMenuItemName ]