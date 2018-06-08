command execution
prepareNewCommand: aCommand
	
	(self activeContextFor: aCommand)
		prepareNewCommand: aCommand