I activate command by shortcut.

Add me to commands using:

	YourCommand>>yourApplicationShortcutActivator
		<commandActivator>
		^CmdShortcutCommandActivator by: $y meta for: YourAppContext

I also define standard shortcuts on class side for rename and remove commands:
- renamingFor: aToolContext
- removalFor: aToolContext

Internal Representation and Key Implementation Points.

    Instance Variables
	keyCombination:		<KKKeyCombination>