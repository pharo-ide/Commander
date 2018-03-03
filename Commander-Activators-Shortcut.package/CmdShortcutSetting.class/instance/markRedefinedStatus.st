updating
markRedefinedStatus
	(label beginsWith: '*') ifTrue: [label := label allButFirst].
	
	shortcutActivation isRedefined ifTrue: [ label := '*', label ]