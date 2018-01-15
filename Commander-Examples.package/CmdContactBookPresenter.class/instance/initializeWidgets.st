initialization
initializeWidgets
	table := self newList.
	table numberOfColumns: 2 withWidths: #(250 250).
	table displayBlock: [ :contact | {contact name. contact phone} ].
	table enableCommanderMenuBy: self.
	table enableCommanderDragAndDropBy: self.
	
	table items: contactBook contents.
	
	