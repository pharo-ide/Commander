morphs setup
enableInMorph: aMorph withCommandsFrom: someObjectWithCommandContext
	super enableInMorph: aMorph withCommandsFrom: someObjectWithCommandContext.
	
	aMorph 
		on: #mouseUp
		send: #handleContextMouseUsing:event:from: to: self withValue: someObjectWithCommandContext