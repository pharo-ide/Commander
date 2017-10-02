I represent command in menu.
I am created with command activator and delegate all messages to it to support menu protocol.
 
To create my instances use:
	CmdCommandMenuItem activatingBy: aCommandActivator
	
Internal Representation and Key Implementation Points.

    Instance Variables
	activator:		<CmdCommandActivator>