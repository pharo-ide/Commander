Class {
	#name : #CmdContactBookPresenter,
	#superclass : #ComposablePresenter,
	#instVars : [
		'table',
		'contactBook'
	],
	#category : 'Commander-Examples'
}

{ #category : #examples }
CmdContactBookPresenter class >> coworkersExample [
	<example>
	^ (self on: CmdContactBook coworkers) openWithSpec 
]

{ #category : #examples }
CmdContactBookPresenter class >> defaultSpec [

	^ SpecLayout composed
		newColumn: [ :column |
			column add: #table];
		yourself
]

{ #category : #examples }
CmdContactBookPresenter class >> familyExample [
	<example>
	^ (self on: CmdContactBook family) openWithSpec 
]

{ #category : #accessing }
CmdContactBookPresenter >> contactBook [
	^ contactBook
]

{ #category : #context }
CmdContactBookPresenter >> createCommandContext [
	^self createCommandContextForSelection: table selectedItems
]

{ #category : #context }
CmdContactBookPresenter >> createCommandContextForSelection: selectedContacts [
	^CmdContactBookPresenterContext for: self of: selectedContacts
]

{ #category : #shortcut }
CmdContactBookPresenter >> ensureKeyBindingsFor: aWidget [
	
	^self enableCommanderShortcutsIn: aWidget
]

{ #category : #initialization }
CmdContactBookPresenter >> initializeWidgets [
	table := self newList.
	table numberOfColumns: 2 withWidths: #(250 250).
	table displayBlock: [ :contact | {contact name. contact phone} ].
	table enableCommanderMenuBy: self.
	table enableCommanderDragAndDropBy: self.
	
	table items: contactBook contents.
	
	
]

{ #category : #testing }
CmdContactBookPresenter >> isContactSelected [
	^table selectedItem notNil
]

{ #category : #accessing }
CmdContactBookPresenter >> selectedContact [
	^table selectedItem
]

{ #category : #accessing }
CmdContactBookPresenter >> selectedContacts [
	^table selectedItems
]

{ #category : #initialization }
CmdContactBookPresenter >> setModelBeforeInitialization: aContactBook [
	super setModelBeforeInitialization: aContactBook.
	contactBook := aContactBook
]

{ #category : #accessing }
CmdContactBookPresenter >> table [
	^ table
]

{ #category : #accessing }
CmdContactBookPresenter >> table: anObject [
	table := anObject
]

{ #category : #updating }
CmdContactBookPresenter >> updateView [
	table items: contactBook contents
]
