instance creation
attachedTo: aMorph withCommandsFrom: someContextObject

	| dispatcher |
	dispatcher := self attachedTo: aMorph.
	dispatcher commandContext: someContextObject.
	^dispatcher