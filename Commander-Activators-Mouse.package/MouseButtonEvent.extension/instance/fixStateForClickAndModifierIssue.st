*Commander-Activators-Mouse
fixStateForClickAndModifierIssue

	self isMouseUp ifFalse: [ ^self ].
	self yellowButtonChanged ifFalse: [ ^self ].
	self anyModifierKeyPressed ifFalse: [ ^self ].
	
	whichButton := MouseEvent redButton 
	