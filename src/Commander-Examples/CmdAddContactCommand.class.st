Class {
	#name : #CmdAddContactCommand,
	#superclass : #CmdCommand,
	#instVars : [
		'contactBook',
		'contact',
		'afterContact'
	],
	#category : 'Commander-Examples'
}

{ #category : #activation }
CmdAddContactCommand class >> contextMenuActivation [
	<classAnnotation>
    ^CmdContextMenuActivation byRootGroupItemFor: CmdContactBookPresenter 
]

{ #category : #activation }
CmdAddContactCommand class >> dragAndDropActivation [
	<classAnnotation>
	
   ^CmdDragAndDropActivation for: CmdContactBookPresenter toDropIn: CmdContactBookPresenter
]

{ #category : #activation }
CmdAddContactCommand class >> shortcutActivation [
	<classAnnotation>
    ^CmdShortcutActivation by: $n meta for: CmdContactBookPresenter 
]

{ #category : #execution }
CmdAddContactCommand >> applyDropResultInContext: aToolContext [
	super applyDropResultInContext: aToolContext.
	
	aToolContext updateView
]

{ #category : #execution }
CmdAddContactCommand >> applyResultInContext: aToolContext [
	super applyResultInContext: aToolContext.
	
	aToolContext updateView
]

{ #category : #testing }
CmdAddContactCommand >> canBeExecutedInDropContext: aToolContext [

	^aToolContext isContactBookSelected 
		and: [ (aToolContext selectedContactBook includesContact: contact) not ]
]

{ #category : #accessing }
CmdAddContactCommand >> contact [
	^ contact
]

{ #category : #accessing }
CmdAddContactCommand >> contact: anObject [
	contact := anObject
]

{ #category : #accessing }
CmdAddContactCommand >> contactBook [
	^ contactBook
]

{ #category : #accessing }
CmdAddContactCommand >> contactBook: anObject [
	contactBook := anObject
]

{ #category : #accessing }
CmdAddContactCommand >> defaultMenuItemName [
	^'New contact'
]

{ #category : #execution }
CmdAddContactCommand >> execute [
	afterContact 
		ifNil: [ contactBook addContact: contact]
		ifNotNil: [ contactBook addContact: contact after: afterContact ]
]

{ #category : #execution }
CmdAddContactCommand >> prepareExecutionInDragContext: aToolContext [
	super prepareExecutionInDragContext: aToolContext.
	
	contact := aToolContext selectedContact
]

{ #category : #execution }
CmdAddContactCommand >> prepareExecutionInDropContext: aToolContext [
	super prepareExecutionInDropContext: aToolContext.
	
	contactBook := aToolContext selectedContactBook.
	afterContact := aToolContext selectedContact
]

{ #category : #execution }
CmdAddContactCommand >> prepareFullExecutionInContext: aToolContext [
	| nameAndPhone pair |
	super prepareFullExecutionInContext: aToolContext.
	
	contactBook := aToolContext selectedContactBook.
	aToolContext isContactSelected ifTrue: [ 
		afterContact := aToolContext selectedContact].
	
	nameAndPhone := UIManager default 
		request: 'Enter new contact name and phone (split by comma)' 
		initialAnswer: 'name,phone'
		title: 'Create new contact'.
	nameAndPhone isEmptyOrNil ifTrue: [ ^ CmdCommandAborted signal ].
	pair := (',' split: nameAndPhone).
	contact := CmdContact named: pair first phone: pair last
]
