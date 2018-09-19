Extension { #name : #CmdRootMenuGroup }

{ #category : #'*Commander-Glamour' }
CmdRootMenuGroup >> buildGlamourContextMenuOn: aPresentation [
	contents 
		select: #canExecuteCommand
		thenDo: [ :each | aPresentation addSelectionAction: each buildGlamourAction ]
]

{ #category : #'*Commander-Glamour' }
CmdRootMenuGroup >> buildGlamourToolbarOn: aPresentation [
	contents 
		select: #canExecuteCommand
		thenDo: [ :each | 
		aPresentation addAction: (each buildGlamourAction 
			showTitle;
			yourself) ]	
]
