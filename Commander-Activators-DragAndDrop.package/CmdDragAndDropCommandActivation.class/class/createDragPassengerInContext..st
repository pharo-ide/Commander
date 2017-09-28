passenger creation
createDragPassengerInContext: aToolContext
	| activators |
	activators := self createActivatorsForExecutableCommandsInContext: aToolContext.
		
	^CmdDragPassenger draggedFromContext: aToolContext toActivate: activators