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
					nodeClass: CmdShortcutSetting name: each id.
				nodeBuilder node item shortcutActivation: each.
			]
		]