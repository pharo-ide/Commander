menu
buildMenu

	^CmdContextMenuCommandActivation 
		buildMenuFor: self 
		inContext: (CmdSimpleToolContext for: self)