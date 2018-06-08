command execition
executeCommandInContext: aToolContext

	self activateAllInContext: aToolContext by: [:activator | 
		activator executeCommand.
		^true ].
	^false