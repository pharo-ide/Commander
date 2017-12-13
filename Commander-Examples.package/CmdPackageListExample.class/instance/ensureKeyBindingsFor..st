shortcut
ensureKeyBindingsFor: aWidget
	
	^ CmdKMDispatcher attachedTo: aWidget withCommandsFrom: (CmdSimpleToolContext for: self)