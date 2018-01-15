execution
prepareExecutionInDropContext: aToolContext
	super prepareExecutionInDropContext: aToolContext.
	
	contactBook := aToolContext selectedContactBook.
	afterContact := aToolContext selectedContact