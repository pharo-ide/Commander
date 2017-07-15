I represent command in menu.
I am created with menu command activator and delegate all messages to it to support menu protocol.
 
To create my instances use:
	CmdCommandMenuItem activatingBy: aMenuCommandActivator
	
Internal Representation and Key Implementation Points.

    Instance Variables
	activator:		<CmdMenuCommandActivator>