execution
execute
	
	| menu |
	menu := self createContextMenu.
	menu hasItems ifFalse: [^self].
	
	menu setInvokingView: context tool.
	menu invokeModal