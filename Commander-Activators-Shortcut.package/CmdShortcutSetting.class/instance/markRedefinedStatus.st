updating
markRedefinedStatus
	label := shortcutActivation id.
	shortcutActivation isRedefined ifTrue: [ label := '*', label ]