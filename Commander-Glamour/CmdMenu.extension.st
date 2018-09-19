Extension { #name : #CmdMenu }

{ #category : #'*Commander-Glamour' }
CmdMenu >> buildGlamourContextMenuOn: aPresenter [
	self rootGroup buildGlamourContextMenuOn: aPresenter
]

{ #category : #'*Commander-Glamour' }
CmdMenu >> buildGlamourToolbarOn: aPresenter [
	self rootGroup buildGlamourToolbarOn: aPresenter
]
