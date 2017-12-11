I represent passenger of drag and drop operation. I am created at start of drag operation  in current context of application with set of appropriate commands annotated by drag&drop activation strategies.
Then at drop target I detect most suitable command for given target context and execute it.
Look at CmdDragAndDropCommandActivation comment for details

Internal Representation and Key Implementation Points.

    Instance Variables
	dragContext:		<ToolContext>
	dropActivators:		<Collection of<CmdDragAndDropCommandActivator>>