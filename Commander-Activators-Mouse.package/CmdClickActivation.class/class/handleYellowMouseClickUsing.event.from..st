morphs setup
handleYellowMouseClickUsing: someObjectWithCommandContext event: anEvent from: sourceMorph

	anEvent yellowButtonChanged ifFalse: [ ^ self ].
	
	^self handleMouseUsing: someObjectWithCommandContext event: anEvent from: sourceMorph