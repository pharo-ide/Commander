accessing
newForCommand: aCommand
	
	| copy |
	copy := self copy.
	copy command: aCommand.
	^copy