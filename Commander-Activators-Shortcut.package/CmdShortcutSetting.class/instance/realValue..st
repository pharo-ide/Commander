accessing
realValue: aShortcutActivation

	shortcutActivation redefineBy: [
			shortcutActivation keyCombination: aShortcutActivation keyCombination].
		
	self updated