I am a hierarchy of commands which opens context menu using specified tool context which was using to activate me.

Subclasses should be created to open special kind of menus represented by different kind of CmdMenuCommandActivationStrategy.
They should implement method #activationStrategy by returning a class for required type of menu.

Internal Representation and Key Implementation Points.

    Instance Variables
	context:		<CmdToolContext>