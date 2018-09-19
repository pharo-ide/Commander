Class {
	#name : #CmdRemoveContactCommand,
	#superclass : #CmdCommand,
	#instVars : [
		'contactBook',
		'contact'
	],
	#category : 'Commander-Examples'
}

{ #category : #testing }
CmdRemoveContactCommand class >> canBeExecutedInContext: aToolContext [

	^aToolContext isContactSelected	
]

{ #category : #activation }
CmdRemoveContactCommand class >> contextMenuActivation [
	<classAnnotation>
    ^CmdContextMenuActivation byRootGroupItemFor: CmdContactBookPresenter 
]

{ #category : #activation }
CmdRemoveContactCommand class >> shortcutActivation [
	<classAnnotation>
    ^CmdShortcutActivation by: $x meta for: CmdContactBookPresenter 
]

{ #category : #execution }
CmdRemoveContactCommand >> applyResultInContext: aToolContext [
	super applyResultInContext: aToolContext.
	
	aToolContext updateView
]

{ #category : #accessing }
CmdRemoveContactCommand >> defaultMenuIconName [
	^#removeIcon
]

{ #category : #accessing }
CmdRemoveContactCommand >> defaultMenuItemName [
	^'Remove'
]

{ #category : #execution }
CmdRemoveContactCommand >> execute [
	contactBook removeContact: contact
]

{ #category : #execution }
CmdRemoveContactCommand >> prepareFullExecutionInContext: aToolContext [
	super prepareFullExecutionInContext: aToolContext.
	
	contactBook := aToolContext selectedContactBook.
	contact := aToolContext selectedContact
]
