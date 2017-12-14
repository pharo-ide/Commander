testing
canBeExecutedInDropContext: aToolContext

	^aToolContext isContactBookSelected 
		and: [ (aToolContext selectedContactBook includesContact: contact) not ]