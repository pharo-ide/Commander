*Commander-Glamour
buildGlamourToolbarOn: aPresentation
	contents 
		select: #canExecuteCommand
		thenDo: [ :each | 
		aPresentation addAction: (each buildGlamourAction 
			showTitle;
			yourself) ]	