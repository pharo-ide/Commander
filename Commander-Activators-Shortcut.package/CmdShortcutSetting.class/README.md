I represent a setting of concrete instance of shortcut activation strategy, the annotation instance registered in the system.

I use redefinition mechanizm of class annotations to change the parameters of given shortcut activation. Currently I only modify key combination value, the actual shortcut value.

I mark redefined shortcut with special star (*) at the beginning of my label.

When I user reset value to default I revert redefined annotation instance:

	shortcutActivation revertRedefinedInstance

I am used in class side methods of CmdShortcutCommandActivation which settings browser nodes for all registered shortcut instances.

Internal Representation and Key Implementation Points.

    Instance Variables
	shortcutActivation:		<CmdShortuctCommandActivation>