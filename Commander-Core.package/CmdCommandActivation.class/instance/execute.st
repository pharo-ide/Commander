execution
execute

	[self prepareCommandForExecution.
	command execute.
	self applyCommandResult] 
		on: CmdCommandAborted do: [ :exc |  ]