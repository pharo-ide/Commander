I represent context of simple tool where tool itself provide required and complete information about own state.
I pass tool as context instance to command activation methods. For example:

	aCommand prepareFullExecutionInContext: tool.
	
I simplify command activation for tools when context is not really needed.

But it is not recomended to use me for tool with list widgets because in that case I do not keep actual selection state. And every my instance will represent same state which is not appropriate in many cases. For example drag and drop operation of list items requires real context reification.