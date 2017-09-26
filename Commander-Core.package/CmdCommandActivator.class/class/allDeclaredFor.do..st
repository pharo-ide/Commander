commands enumeration
allDeclaredFor: aToolContext do: blockWithActivator
	^self declaredInstancesDo: [ :each |
		(each canBeUsedInContext: aToolContext) 
			ifTrue: [ blockWithActivator value: each ] ].