I am drag and drop command activator.

Add me to commands using:

	YourCommand>>yourApplicationDragAndDropActivator
		<commandActivator>
		^CmdDragAndDropCommandActivator for: YourAppContextForDrag toDropIn: YourAppContextForDrop

First argument of activator is a context where drap operation can be started. Last argument is a context where command can be executed by drop.

Applications which support me should implement few drag and drop methods according to UI library (Morphic). At drag start a CmdDragPassenger should be created in current application context: 

	CmdDragAndDropCommandActivator createDragPassengerInContext:  aToolContext
	
Then at drop target widget (morph) the drop context should be created. It should be used to ask given passenger about possibility to execute drop:
- aPassenger canBeDroppedInContext: targetToolContext 
- aPassanger dropInContext: targetToolContex 

To support all these methods passenger asks my instances which delegate processing to underlying commands. Commands should define three methods:
- canBeExecutedInDropContext: aToolContext 
- prepareExecutionInDragContext: aToolContext
- prepareExecutionInDropContext: aToolContext

By default commands can be executed by any drop context and for preparation they do nothing. 

Internal Representation and Key Implementation Points.

    Instance Variables
	dropContextClass:		<CmdToolContext class>
	actualDropContext:		<CmdToolContext>