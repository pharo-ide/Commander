accessing
shortcutActivation: aShortcutActivation
	shortcutActivation := aShortcutActivation.
	
	label := shortcutActivation id.
	description := shortcutActivation commandClass comment.
	self markRedefinedStatus.