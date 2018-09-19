Class {
	#name : #CmdChangePhoneCommand,
	#superclass : #CmdCommand,
	#instVars : [
		'contact',
		'newPhone'
	],
	#category : 'Commander-Examples'
}

{ #category : #testing }
CmdChangePhoneCommand class >> canBeExecutedInContext: aToolContext [

	^aToolContext isContactSelected	
]

{ #category : #activation }
CmdChangePhoneCommand class >> contextMenuActivation [
	<classAnnotation>
	^CmdContextMenuActivation byItemOf: CmdPhoneMenuGroup for: CmdContactBookPresenter
]

{ #category : #activation }
CmdChangePhoneCommand class >> shortcutActivation [
	<classAnnotation>
    ^CmdShortcutActivation by: $p meta for: CmdContactBookPresenter 
]

{ #category : #execution }
CmdChangePhoneCommand >> applyResultInContext: aToolContext [
	super applyResultInContext: aToolContext.
	
	aToolContext updateView
]

{ #category : #accessing }
CmdChangePhoneCommand >> defaultMenuItemName [
	^'New phone'
]

{ #category : #execution }
CmdChangePhoneCommand >> execute [
	contact phone: newPhone
]

{ #category : #execution }
CmdChangePhoneCommand >> prepareFullExecutionInContext: aToolContext [
	super prepareFullExecutionInContext: aToolContext.
	
	contact := aToolContext selectedContact.
	
	newPhone := UIManager default 
		request: 'New phone for the contact' 
		initialAnswer: contact phone 
		title: 'Set new phone for contact'.
	newPhone isEmptyOrNil | (newPhone = contact name) ifTrue: [ ^ CmdCommandAborted signal ]
]
