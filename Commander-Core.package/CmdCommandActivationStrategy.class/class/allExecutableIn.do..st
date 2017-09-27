commands enumeration
allExecutableIn: aToolContext do: blockWithActivator

	^self allDeclaredFor: aToolContext do: [ :declaredActivator |
		(declaredActivator canExecuteCommandInContext: aToolContext) ifTrue: [ 
			blockWithActivator value: (declaredActivator newActivatorFor: aToolContext) ] ]