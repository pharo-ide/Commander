instance creation
attachedTo: aMorph withCommandsFrom: someObjectWithCommandContext

	| dispatcher |
	dispatcher := self attachedTo: aMorph.
	dispatcher commandProvider: someObjectWithCommandContext.
	^dispatcher