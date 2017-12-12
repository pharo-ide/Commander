menu
buildMenu: aMenuMorph

	| newMenu |
	newMenu := CmdContextMenuCommandActivation buildMenuFor: self inContext: (CmdSimpleToolContext for: self).
	^newMenu
	