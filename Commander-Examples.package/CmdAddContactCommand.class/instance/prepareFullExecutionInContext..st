execution
prepareFullExecutionInContext: aToolContext
	| nameAndPhone pair |
	super prepareFullExecutionInContext: aToolContext.
	
	contactBook := aToolContext selectedContactBook.
	aToolContext isContactSelected ifTrue: [ 
		beforeContact := aToolContext selectedContact].
	
	nameAndPhone := UIManager default 
		request: 'Enter new contact name and phone (split by comma)' 
		initialAnswer: 'name,phone'
		title: 'Create new contact'.
	nameAndPhone isEmptyOrNil ifTrue: [ ^ CmdCommandAborted signal ].
	pair := (',' split: nameAndPhone).
	contact := CmdContact named: pair first phone: pair last