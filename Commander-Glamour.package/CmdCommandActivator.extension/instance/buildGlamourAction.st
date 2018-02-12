*Commander-Glamour
buildGlamourAction
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