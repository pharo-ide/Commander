command execution
applyResultOf: aCommand

	(self activeContextFor: aCommand)
		applyResultOf: aCommand