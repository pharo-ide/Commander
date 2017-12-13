initialization
initializeWidgets
	listModel := self newList.
	listModel menu: [ self buildMenu ].
	listModel items: RPackageOrganizer default packages