initialization
initializeWidgets
	table := self newList.
	table numberOfColumns: 2 withWidths: #(250 250).
	table displayBlock: [ :contact | {contact name. contact phone} ].
	table enableCommanderMenuBy: self.
	table items: contactBook contents.
	
	table 
		dragEnabled: true;
		dropEnabled: true;
		transferBlock: [ :item :source  | | passenger |
			passenger := CmdDragAndDropCommandActivation createDragPassengerInContext: self createCommandContext.
			table defaultTransferFor: passenger from: source ];
		wantDropBlock: [ :draggedItem :event :source | 
			draggedItem canBeDroppedInContext: self createCommandContext ];
		acceptDropBlock: [ :transfer :event :source :receiver | 
			transfer passenger dropInContext: self createCommandContext ].