Class {
	#name : #CmdContact,
	#superclass : #Object,
	#instVars : [
		'name',
		'phone'
	],
	#category : 'Commander-Examples'
}

{ #category : #'instance creation' }
CmdContact class >> named: aString phone: phone [
	^self new 
		name: aString;
		phone: phone
]

{ #category : #accessing }
CmdContact >> name [
	^ name
]

{ #category : #accessing }
CmdContact >> name: anObject [
	name := anObject
]

{ #category : #accessing }
CmdContact >> phone [
	^ phone
]

{ #category : #accessing }
CmdContact >> phone: anObject [
	phone := anObject
]

{ #category : #printing }
CmdContact >> printOn: aStream [
	super printOn: aStream.
	
	aStream nextPut: $(.
	aStream nextPutAll: name.
	aStream nextPut: $).
]
