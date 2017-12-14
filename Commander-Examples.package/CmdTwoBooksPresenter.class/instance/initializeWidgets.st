initialization
initializeWidgets
	book1 := self instantiate: (CmdContactBookPresenter on: CmdContactBook family).
	book2 := self instantiate: (CmdContactBookPresenter on: CmdContactBook coworkers).