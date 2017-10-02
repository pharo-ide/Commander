building
buildInContext: aToolContext

	activationStrategyClass 
		allAvailableInContext: aToolContext
		do: [ :activation | 
			self buildCommandItemInContext: aToolContext activatingBy: activation]