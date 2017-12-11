accessing
menuItemName
	^ menuItemName ifNil: [ self commandClass defaultMenuItemName ]