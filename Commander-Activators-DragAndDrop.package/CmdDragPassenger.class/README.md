I represent passenger of drag and drop operation. I am created at start of drag operation  in current application context with set of appropriate commands represented by drop activators.
Then at drop target I detect most suitable command for given target context and execute it.
Look at CmdDragAndDropCommandActivator comment for details

Internal Representation and Key Implementation Points.

    Instance Variables
	dragContext:		<ToolContext>
	dropActivators:		<Collection of<CmdDragAndDropCommandActivator>>