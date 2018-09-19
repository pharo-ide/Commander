Class {
	#name : #CmdContactBookPresenterContext,
	#superclass : #CmdToolContext,
	#instVars : [
		'selectedContacts'
	],
	#category : 'Commander-Examples'
}

{ #category : #'instance creation' }
CmdContactBookPresenterContext class >> for: aPresenter of: contacts [
	^(self for: aPresenter)
		selectedContacts: contacts
]

{ #category : #testing }
CmdContactBookPresenterContext >> isContactBookSelected [
	^true
]

{ #category : #testing }
CmdContactBookPresenterContext >> isContactSelected [
	^selectedContacts notEmpty
]

{ #category : #testing }
CmdContactBookPresenterContext >> representsSimpleAnnotationUser: somePresenterClass [

	^tool isKindOf: somePresenterClass
]

{ #category : #accessing }
CmdContactBookPresenterContext >> selectedContact [
	^ selectedContacts last
]

{ #category : #accessing }
CmdContactBookPresenterContext >> selectedContactBook [
	^ tool contactBook
]

{ #category : #accessing }
CmdContactBookPresenterContext >> selectedContacts [
	^ selectedContacts
]

{ #category : #accessing }
CmdContactBookPresenterContext >> selectedContacts: anObject [
	selectedContacts := anObject
]

{ #category : #controlling }
CmdContactBookPresenterContext >> updateView [
	tool updateView
]
