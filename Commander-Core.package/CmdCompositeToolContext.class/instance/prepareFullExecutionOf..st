command execution
prepareFullExecutionOf: aCommand

	(self activeContextFor: aCommand)
		prepareFullExecutionOf: aCommand