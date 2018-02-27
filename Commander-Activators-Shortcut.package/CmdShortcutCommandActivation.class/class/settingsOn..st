settings
settingsOn: aBuilder
	<systemsettings>
	| nodeBuilder |
	(aBuilder group: #shortcuts)
		label: 'Shortcuts';
		description: 'All System Command Shortcuts';
		with: [
			self registeredInstancesDo: [:each |
				nodeBuilder := aBuilder 
					nodeClass: CmdShortcutSettingDeclaration name: each commandClass name.
				nodeBuilder
					label: each commandClass name;
					description: each commandClass comment.
				nodeBuilder node item shortcutActivation: each.
			]
		]