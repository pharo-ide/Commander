instance creation
draggedFromContext: aToolContext toActivate: commandActivators

	^self new 
		dragContext: aToolContext;
		dropActivators: commandActivators 