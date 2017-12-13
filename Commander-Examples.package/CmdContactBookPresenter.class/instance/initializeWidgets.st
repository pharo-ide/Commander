initialization
initializeWidgets
	table := self newList.
	table numberOfColumns: 2 withWidths: #(250 250).
	table displayBlock: [ :contact | {contact name. contact phone} ].
	table menu: [ self buildMenu ].
	table items: contactBook contents