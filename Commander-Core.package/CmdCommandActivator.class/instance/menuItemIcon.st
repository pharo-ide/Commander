accessing
menuItemIcon 
	"convenience method to access icons directly"
	| menuItem |
	menuItem := MenuItemMorph new.
	self command setUpIconForMenuItem: menuItem.
	^ menuItem icon