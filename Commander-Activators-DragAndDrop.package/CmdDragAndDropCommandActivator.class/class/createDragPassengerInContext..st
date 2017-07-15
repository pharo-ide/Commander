passenger creation
createDragPassengerInContext: aToolContext
	| activators |
	activators := OrderedCollection new.

	self allExecutableIn: aToolContext do: [ :readyActivator | 
		activators add: readyActivator].
		
	^CmdDragPassenger draggedFromContext: aToolContext toActivate: activators