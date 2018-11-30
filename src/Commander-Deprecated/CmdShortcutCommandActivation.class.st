Class {
	#name : #CmdShortcutCommandActivation,
	#superclass : #CmdShortcutActivation,
	#category : #'Commander-Deprecated'
}

{ #category : #deprecation }
CmdShortcutCommandActivation class >> deprecationRefactorings [

	^ { RBApplyClassDeprecationRefactoring rename: self to: #CmdShortcutActivation}

]

{ #category : #deprecation }
CmdShortcutCommandActivation class >> isDeprecated [
	^true
]

{ #category : #deprecation }
CmdShortcutCommandActivation class >> new [
	^CmdShortcutActivation new
]
