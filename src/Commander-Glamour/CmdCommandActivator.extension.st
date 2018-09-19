Extension { #name : #CmdCommandActivator }

{ #category : #'*Commander-Glamour' }
CmdCommandActivator >> buildGlamourAction [
	| action |

	action := (GLMAction new
		title: self menuItemName;
		icon: self menuItemIcon;
		action: [ :presentation :entity | 
			command readParametersFromGlamourContext: (CmdGlamourActionContext new 
				entity: entity;
				presentation: presentation;
				yourself).
			self executeCommand ];
		yourself).
	
	self setUpShortcutForGlamourAction: action.
	
	^ action
]

{ #category : #'*Commander-Glamour' }
CmdCommandActivator >> setUpShortcutForGlamourAction: anAction [
	CmdShortcutCommandActivation 
		activeInstancesFor: command class 
		inContext: context
		do: [ :shortcut | anAction shortcut: shortcut keyCombination key ]	
]
