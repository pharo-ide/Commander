building
buildInContext: aToolContext

	commandActivatorClass 
		allDeclaredFor: aToolContext
		do: [ :activation | 
			self buildCommandItemInContext: aToolContext activatingBy: activation]