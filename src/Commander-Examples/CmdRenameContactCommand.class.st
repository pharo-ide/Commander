Class {
	#name : #CmdRenameContactCommand,
	#superclass : #CmdCommand,
	#instVars : [
		'newName',
		'contact'
	],
	#category : 'Commander-Examples'
}

{ #category : #testing }
CmdRenameContactCommand class >> canBeExecutedInContext: aToolContext [

	^aToolContext isContactSelected	
]

{ #category : #'instance creation' }
CmdRenameContactCommand class >> contact: aContact newName: aString [
	^self new 
		contact: aContact;
		newName: aString
]

{ #category : #activation }
CmdRenameContactCommand class >> contextMenuActivation [
	<classAnnotation>
	^CmdContextMenuActivation byRootGroupItemOrder: 1 for: CmdContactBookPresenter
]

{ #category : #activation }
CmdRenameContactCommand class >> shortcutActivation [
	<classAnnotation>
    ^CmdShortcutActivation by: $r meta for: CmdContactBookPresenter 
]

{ #category : #execution }
CmdRenameContactCommand >> applyResultInContext: aToolContext [
	super applyResultInContext: aToolContext.
	
	aToolContext updateView
]

{ #category : #accessing }
CmdRenameContactCommand >> defaultMenuItemName [
	^'Rename'
]

{ #category : #execution }
CmdRenameContactCommand >> execute [
	contact name: newName
]

{ #category : #'context menu' }
CmdRenameContactCommand >> fillContextMenu: aMenu using: aCommandActivator [
	| item |
	item := aMenu 
		add: aCommandActivator menuItemName
		target: aCommandActivator 
		selector: #executeCommand.
		
	item color: Color red
]

{ #category : #accessing }
CmdRenameContactCommand >> newName [
	^ newName
]

{ #category : #accessing }
CmdRenameContactCommand >> newName: anObject [
	newName := anObject
]

{ #category : #execution }
CmdRenameContactCommand >> prepareFullExecutionInContext: aToolContext [
	super prepareFullExecutionInContext: aToolContext.
	
	contact := aToolContext selectedContact.
	
	newName := UIManager default 
		request: 'New name of the contact' 
		initialAnswer: contact name 
		title: 'Rename a contact'.
	newName isEmptyOrNil | (newName = contact name) ifTrue: [ ^ CmdCommandAborted signal ]
]
