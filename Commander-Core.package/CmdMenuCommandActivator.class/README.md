I am a root of command activator hierarchy which supposed to represent commands in kind of menu.
I provide information about name, group and position of command inside menu:
- menuItemName. If it is not specified I ask command for #defaultMenuItemName.
- menuItemOrder
- menuGroup
My subclasses provide meaning of concrete menu type. It could be context menu, toolbar menu, halo menu and etc..
To build any kind of end user menu my subclasses first build abstract CmdMenu. It represents tree structure of concrete menu implemetation.
Concrete menu activators extend abstract menu to delegate item building to underlying commands and groups.

Menu groups are represented by subclasses of CmdMenuGroup. They are used as classes to declare activators. Instances are only created during menu building.
Groups are containers of command items and other groups.
Each group defines #parentGroup on class side. By default it is CmdRootMenuGroup. Subclasses can override it to define deep tree structure.

I provide suitable methods to declare activators:
	ConcreteMenuCommandActivator byRootGroupItemFor: YourAppContext 
	ConcreteMenuCommandActivator byRootGroupItemOrder: aNumber for: YourAppContext
	ConcreteMenuCommandActivator byItemOf: menuGroupClass for: YourAppContext
	ConcreteMenuCommandActivator byItemOf: menuGroupClass order: aNumber for: YourAppContext

Larger order pushes command to the end of menu. Groups are also define order by instance side method #order.

Internal Representation and Key Implementation Points.

    Instance Variables
	menuGroup:		<CmdMenuGroup class>
	menuItemName:		<String>
	menuItemOrder:		<Number>