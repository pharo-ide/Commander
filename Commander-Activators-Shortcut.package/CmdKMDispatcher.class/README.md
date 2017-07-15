I implement dispatch by delegating execution to appropriate command which defines activator suitable for given KM events.

User should override morph kmDispatcher to use me instead of default:
	YourMorph>>kmDispatcher
		^ CmdKMDispatcher attachedTo: self