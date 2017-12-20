*Commander-SpecSupport
enableCommanderDropBy: aPresenter

	self dropEnabled: true.
	self wantDropBlock: [ :draggedItem :event :source | 
		draggedItem canBeDroppedInContext: aPresenter createCommandContext ].
	self acceptDropBlock: [ :transfer :event :receiverMorph :receiverPresenter  | 
		transfer passenger dropInContext: (receiverMorph createCommandContextBy: aPresenter forDropAt: event)].