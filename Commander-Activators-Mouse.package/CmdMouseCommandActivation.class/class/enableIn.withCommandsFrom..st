morphs setup
enableIn: aMorph withCommandsFrom: someObjectWithCommandContext

	aMorph 
		on: self morphicEventType 
		send: #handleMouseUsing:event:from: to: self withValue: someObjectWithCommandContext