Class {
	#name : #CmdGlamourActionContext,
	#superclass : #Object,
	#instVars : [
		'entity',
		'presentation'
	],
	#category : 'Commander-Glamour'
}

{ #category : #accessing }
CmdGlamourActionContext >> entity [
	^ entity
]

{ #category : #accessing }
CmdGlamourActionContext >> entity: anObject [
	entity := anObject
]

{ #category : #accessing }
CmdGlamourActionContext >> presentation [
	^ presentation
]

{ #category : #accessing }
CmdGlamourActionContext >> presentation: anObject [
	presentation := anObject
]

{ #category : #accessing }
CmdGlamourActionContext >> presentationSelection [
	^ self presentation selection
]
