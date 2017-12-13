I implement dispatch by delegating execution to appropriate command which defines shortcut activation strategy suitable for given KM events.

User should override morph kmDispatcher to use me instead of default:

	YourMorph>>kmDispatcher
		^ CmdKMDispatcher attachedTo: self
		
In case when commands should be provided by another object instead of morph you should use another method: 
	
	CmdKMDispatcher attachedTo: self withCommandsFrom: someObjectWithCommandContext
	
During dispatch process I ask command provider to create command context. And by default provider is morph itself.
 
Internal Representation and Key Implementation Points.

    Instance Variables
	commandProvider:		<Object>