Class {
	#name : #CmdContactBook,
	#superclass : #Object,
	#instVars : [
		'contents'
	],
	#classInstVars : [
		'family',
		'coworkers'
	],
	#category : 'Commander-Examples'
}

{ #category : #accessing }
CmdContactBook class >> coworkers [
	^coworkers ifNil: [ 
		coworkers := self new 
			add: 'Stef' phone: '112 378';
			add: 'Pavel' phone: '898 678';
			add: 'Marcus' phone: '444 888';
			yourself]
]

{ #category : #accessing }
CmdContactBook class >> family [
	^family ifNil: [ 
		family := self new 
			add: 'John' phone: '342 345';
			add: 'Bill' phone: '123 678';
			add: 'Marry' phone: '789 567';
			yourself]
]

{ #category : #accessing }
CmdContactBook class >> reset [
	<script>
	coworkers := nil.
	family := nil
]

{ #category : #accessing }
CmdContactBook >> add: contactName phone: phone [
	| contact |
	contact := CmdContact named: contactName phone: phone.
	self addContact: contact.
	^contact
]

{ #category : #accessing }
CmdContactBook >> addContact: aContact [
	contents add: aContact
]

{ #category : #accessing }
CmdContactBook >> addContact: newContact after: contactAfter [ 
	contents add: newContact after: contactAfter
]

{ #category : #accessing }
CmdContactBook >> contents [
	^ contents
]

{ #category : #accessing }
CmdContactBook >> contents: anObject [
	contents := anObject
]

{ #category : #testing }
CmdContactBook >> includesContact: aContact [
	^ contents includes: aContact
	
]

{ #category : #initialization }
CmdContactBook >> initialize [
	super initialize.
	contents := OrderedCollection new.
]

{ #category : #accessing }
CmdContactBook >> removeContact: aContact [
	contents remove: aContact
]
