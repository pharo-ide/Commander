execution
prepareFullExecutionInContext: aToolContext
	super prepareFullExecutionInContext: aToolContext.
	
	contact := aToolContext selectedContact.
	
	newPhone := UIManager default 
		request: 'New phone for the contact' 
		initialAnswer: contact phone 
		title: 'Set new phone for contact'.
	newPhone isEmptyOrNil | (newPhone = contact name) ifTrue: [ ^ CmdCommandAborted signal ]