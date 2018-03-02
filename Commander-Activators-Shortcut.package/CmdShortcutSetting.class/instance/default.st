accessing
default

	^shortcutActivation isRedefined 
		ifTrue: [ shortcutActivation redefinedInstance ]
		ifFalse: [ shortcutActivation ]