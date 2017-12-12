initialization
initializeWidgets
	listModel := self newList.
	listModel menu: [ :menu | self buildMenu: menu ].
	listModel items: RPackageOrganizer default packages