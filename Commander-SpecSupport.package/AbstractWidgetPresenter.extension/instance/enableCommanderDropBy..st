*Commander-SpecSupport
enableCommanderDropBy: aPresenter

	self dropEnabled: true.
	self wantDropBlock: [ :draggedItem :event :source | 
		draggedItem canBeDroppedInContext: aPresenter createCommandContext ].
	self acceptDropBlock: [ :transfer | 
		transfer passenger dropInContext: aPresenter createCommandContext ].