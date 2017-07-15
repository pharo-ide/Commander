building
buildInContext: aToolContext

	rootCommandClass 
		allCommandsFor: aToolContext withActivator: commandActivatorClass
		do: [ :activation | 
			self buildCommandItemInContext: aToolContext activatingBy: activation]