I describe how access and execute command using given shortcut.

Add me to commands using:

	YourCommand>>yourApplicationShortcutActivation
		<classAnnotation>
		^CmdShortcutCommandActivation by: $y meta for: YourAppContext

I also define standard shortcuts on class side for rename and remove commands:

- renamingFor: aToolContext
- removalFor: aToolContext

In addition I add to the settings browser the root group "Shortcuts" with all my registered instances.
So user can redefine default values in settings browser. I use class annotation redefinition mehanizm to support it. 
To reset all redefined values evaluate following expression:

	CmdShortcutCommandActivation revertRedefinedInstances. 

Internal Representation and Key Implementation Points.

    Instance Variables
	keyCombination:		<KKKeyCombination>