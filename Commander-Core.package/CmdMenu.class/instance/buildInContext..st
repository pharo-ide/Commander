building
buildInContext: aToolContext

	activationStrategyClass 
		forAllCommandsInContext: aToolContext
		do: [ :activation | 
			self buildCommandItemInContext: aToolContext activatingBy: activation]