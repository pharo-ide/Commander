*Commander-SpecSupport
enableCommanderDragBy: presenterWithCommands

	self dragEnabled: true.
	self transferBlock: [ :items :source  | 
		self createDragTransferOf: items from: source withCommandsFrom: presenterWithCommands ].