morphs setup
enableInMorph: aMorph withCommandsFrom: someObjectWithCommandContext
	super enableInMorph: aMorph withCommandsFrom: someObjectWithCommandContext.
	
	"Following subscribtion is requried because morphic does not generate mouse click 
	when right mouse (yellow) was clicked. In that case mouse up is triggered"
	
	aMorph 
		on: #mouseUp
		send: #handleYellowMouseClickUsing:event:from: to: self withValue: someObjectWithCommandContext