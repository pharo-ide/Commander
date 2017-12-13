instance creation
attachedTo: aMorph

	| dispatcher |
	dispatcher := CmdKMDispatcher target: aMorph.
	aMorph initializeShortcuts: dispatcher.
	aMorph setProperty: #kmDispatcher toValue: dispatcher.
	^dispatcher