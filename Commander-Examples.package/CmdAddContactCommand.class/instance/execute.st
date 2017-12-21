execution
execute
	afterContact 
		ifNil: [ contactBook addContact: contact]
		ifNotNil: [ contactBook addContact: contact after: afterContact ]