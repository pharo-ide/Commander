building
buildInContext: aToolContext

	activationStrategyClass 
		allDeclaredFor: aToolContext
		do: [ :activation | 
			self buildCommandItemInContext: aToolContext activatingBy: activation]