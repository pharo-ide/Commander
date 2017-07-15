I am a root of hierarchy of first class menu groups.
My subclasses are used to declare command position in menu. They are declared with command menu activators.
My own menu position is defined statically by instance side method #order and class side method #parentGroup. By default #parentGroup is CmdRootMenuGroup which represents root menu items. If some group wants to be in deep tree structure it overrides #parentGroup method to return another group class. 

My instances contain other menu items (commands and groups). I provide accessing methods for them:
- addItem: aMenuItem
- removeItem: aMenuItem
- includes: aMenuItem
- size

Different kind of menu activators extend me to build different kind of menu (context menu, toobar, halo menu, etc.)

Internal Representation and Key Implementation Points.

    Instance Variables
	contents:		<OrderedCollection of<CmdMenuItem>>