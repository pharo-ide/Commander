I activate command by context menu item.

Add me to commands using:

	YourCommand>>yourApplicationContextMenuActivator
		<commandActivator>
		^CmdContextMenuCommandActivator byRootGroupItemFor:  YourAppContext

It will add command to root of context menu. There are a couple of methods to specify menu group and order:
- byRootGroupItemOrder: aNumber for: YourAppContext
- byItemOf: YourMenuGroupClass for: YourAppContext
- byItemOf: YourMenuGroupClass order: aNumber for: YourAppContext

Larger order puts command to the end of menu.

Applications which want menu based on commands should create current application context instance and use my class side method to build menu:

	CmdContextMenuCommandActivator buildMenuInContext:  anYourAppContext

During full menu building my instances build menu items. For this they delegate building to underlying command instance:
	command fillContextMenu: aMenu using: self
Commands  can override this method to build something specific but by default they just build menu item morph with label and icon. To parametrize this default behaviour commands can define two methods:
- defaultMenuItemName 
- setUpIconForMenuItem: 
 
Look also at my superclass CmdMenuCommandActivator comment for more details