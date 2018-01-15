execution
executeCommand

	[self prepareCommandForExecution.
	context executeCommand: command by: self.
	self applyCommandResult] 
		on: CmdCommandAborted do: [ :exc |  ]