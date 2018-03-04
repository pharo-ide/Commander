execution
execute
	
	| menu |
	menu := self createContextMenu.
	menu hasItems ifTrue: [menu popUpInWorld]