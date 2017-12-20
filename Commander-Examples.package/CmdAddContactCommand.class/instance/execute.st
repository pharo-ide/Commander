execution
execute
	beforeContact 
		ifNil: [ contactBook addContact: contact]
		ifNotNil: [ contactBook addContact: contact before: beforeContact ]