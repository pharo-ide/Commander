attach to morphs
attachedTo: aMorph

	^ aMorph
		valueOfProperty: #kmDispatcher
		ifAbsentPut: [ 
			| kmd |
			kmd := CmdKMDispatcher target: aMorph.
			aMorph initializeShortcuts: kmd.
			kmd ]