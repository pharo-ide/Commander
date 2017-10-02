I represent activation of command through drag and drop operation.
In that case context variable from my superclass keeps context where drag was initiated.
And my variable dropContext holds context where command should be executed by drop operation.

I redefine execution logic with two separate steps:
- prepare command in context of drag operation:
	context prepareDragActivationOf: command
- prepare command in context of drop operation:
	dropContext prepareDropExecutionOf:  command
Actual preparation logic is implemented by command. Contexts delegate processing to it. 

Drag and drop logic of concrete UI application should execute command using:
	activator executeDropInContext: aToolContextForDropOperation

My instances are created by CmdDragAndDropCommandActivation:
	dragAndDropActivation newActivatorFor: aContextForDragOperation.
		
Internal Representation and Key Implementation Points.

    Instance Variables
	dropContext:		<CmdToolContext>