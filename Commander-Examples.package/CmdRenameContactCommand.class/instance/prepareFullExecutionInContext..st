execution
prepareFullExecutionInContext: aToolContext
	super prepareFullExecutionInContext: aToolContext.
	
	contact := aToolContext selectedContact.
	
	newName := UIManager default 
		request: 'New name of the contact' 
		initialAnswer: contact name 
		title: 'Rename a contact'.
	newName isEmptyOrNil | (newName = contact name) ifTrue: [ ^ CmdCommandAborted signal ]