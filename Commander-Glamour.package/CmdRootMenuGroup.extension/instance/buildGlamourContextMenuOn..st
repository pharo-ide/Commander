*Commander-Glamour
buildGlamourContextMenuOn: aPresentation
	contents 
		select: #canExecuteCommand
		thenDo: [ :each | aPresentation addSelectionAction: each buildGlamourAction ]