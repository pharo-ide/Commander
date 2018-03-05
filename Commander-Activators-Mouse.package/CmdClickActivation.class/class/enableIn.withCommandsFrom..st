morphs setup
enableIn: aMorph withCommandsFrom: someObjectWithCommandContext
	super enableIn: aMorph withCommandsFrom: someObjectWithCommandContext.
	
	aMorph 
		on: #mouseUp
		send: #handleContextMouseUsing:event:from: to: self withValue: someObjectWithCommandContext