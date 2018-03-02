settings
settingsOn: aBuilder
	<systemsettings>
	(aBuilder group: #shortcuts)
		label: 'Shortcuts';
		description: 'All System Command Shortcuts';
		with: [
			self buildSettingsFor: self redefiningInstances on: aBuilder.
			self 
				buildSettingsFor: (self registeredInstances copyWithoutAll: self redefiningInstances)
				on: aBuilder.
		]