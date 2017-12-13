accessing
add: contactName phone: phone
	| contact |
	contact := CmdContact named: contactName phone: phone.
	self addContact: contact.
	^contact