accessing
selectedContact
	selectedContacts ifEmpty: [ ^nil ].
	
	^ selectedContacts last