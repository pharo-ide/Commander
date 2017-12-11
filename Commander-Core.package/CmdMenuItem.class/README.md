I represent abstract menu item.
I have two main subclasses: ClyComandMenuItem and CmdMenuGroup. Last subclass is a root of menu group hierarchy.

To support menu my subclasses implement following methods:
- name
- order. It defines position in menu. Larger value pushes item to the end of menu.
- isActive. It defines if item can be activated. 
- isEmpty. It defines if item has children. 
- isSimilarTo: anotherMenuItem. It defines if two items are similar.

Also different kinds of menu activation strategy extend me and my subclasses by methods to support concrete menu