execution
prepareFullExecutionInContext: aToolContext
	super prepareFullExecutionInContext: aToolContext.
	
	contactBook := aToolContext selectedContactBook.
	contact := aToolContext selectedContact