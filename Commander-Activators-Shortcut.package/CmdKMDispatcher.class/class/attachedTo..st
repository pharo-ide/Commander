instance creation
attachedTo: aMorph

	| dispatcher |
	aMorph valueOfProperty: #kmDispatcher ifPresentDo: [:existing | 
		(existing isKindOf: self) ifTrue: [^existing]].
	dispatcher := CmdKMDispatcher target: aMorph.
	aMorph initializeShortcuts: dispatcher.
	aMorph setProperty: #kmDispatcher toValue: dispatcher.
	^dispatcher