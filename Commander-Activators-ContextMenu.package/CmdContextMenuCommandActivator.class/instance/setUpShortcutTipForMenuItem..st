building menu items
setUpShortcutTipForMenuItem: aMenuItemMorph
	| shortcut keyText shortcuts |
	shortcuts := self findOtherActivatorsWhich: [ :each | 
		each isKindOf: CmdShortcutCommandActivator ].
	shortcuts ifEmpty: [ ^self ].
	
	shortcut := shortcuts first keyCombination.
	"this is trick to show shortcut on menu with existing menu support"
	keyText := String streamContents: [:s | shortcut prettyPrintOn: s].
	keyText := keyText copyWithout: keyText first.
	aMenuItemMorph keyText: keyText