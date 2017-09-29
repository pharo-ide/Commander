passenger creation
createDragPassengerInContext: aToolContext
	| activators |
	activators := self createActivatorsExecutableInContext: aToolContext.
		
	^CmdDragPassenger draggedFromContext: aToolContext toActivate: activators