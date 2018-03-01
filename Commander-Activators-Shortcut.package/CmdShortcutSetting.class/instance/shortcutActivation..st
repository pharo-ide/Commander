accessing
shortcutActivation: aShortcutActivation
	shortcutActivation := aShortcutActivation.
	
	self markRedefinedStatus.
	description := shortcutActivation commandClass comment