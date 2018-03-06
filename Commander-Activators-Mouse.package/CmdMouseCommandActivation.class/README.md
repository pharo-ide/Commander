My subclasses represent particular kind of mouse events which should activate annotated commands.
For example it can be mouse click or double click.

My instances are configured with type of mouse button and keyboard modifier which are expected to be used to activate commands.

By default the left click is expected:

	CmdClickActivation for: aCommandUser.

With extra parameter you can configure modifier: 

	CmdClickActivation with: KMModifier shift for: aCommandUser.
	
To specify mouse button use following messages: 

	(CmdClickActivation for: aCommandUser) beBlueButton.
	(CmdClickActivation for: aCommandUser) beYellowButton.
	(CmdClickActivation for: aCommandUser) beRedButton

And there is special constructor for yellow button which is usefull for various context menu activations:

	CmdClickActivation byYellowButtonFor: aCommandUser.
	CmdClickActivation byYellowButtonWith: KMModifier shift for: aCommandUser

My instances are active when they are match last mouse event:

	aMouseActivation isActiveInContext: aToolContext 
	
I extend this method to check that last mouse event matches expected button and modifier. 
		
There are few methods how to enable mouse commands in the morphs: 

	aMorph enableMouseCommands: CmdClickActivation withContextFrom: aToolContext.

It enables click action to execute commands in given aMorph instance.

	aMorph enableAllMouseCommandsFrom: aToolContext.    	 
		
It enables all kind of mouse events to execute commands in given aMorph instance.

Internal Representation and Key Implementation Points.

    Instance Variables
	keyboardModifier:		<KMModifier>
	whichButton:		<Integer>