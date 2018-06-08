*Commander-SpecSupport
createDragTransferOf: items from: source withCommandsFrom: presenterWithCommands

	| commandPassenger itemPassenger |
	commandPassenger := CmdDragAndDropActivation 
		createDragPassengerInContext: presenterWithCommands createCommandContext.
	itemPassenger := CmdSpecDragPassenger from: source model on: commandPassenger with: items.
	^self defaultTransferFor: itemPassenger from: source