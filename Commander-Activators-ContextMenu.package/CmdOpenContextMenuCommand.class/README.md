I am a command which opens context menu using specified tool context which was using to activate me.

Subclasses can be created to open special kind of menus represented by different kind of CmdMenuCommandActivationStrategy.
They should override method #activationStrategy by returning a class for required type of menu.

Internal Representation and Key Implementation Points.

    Instance Variables
	context:		<CmdToolContext>
