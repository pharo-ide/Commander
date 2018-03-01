settings
settingsOn: aBuilder
	<systemsettings>
	(aBuilder group: #shortcuts)
		label: 'Shortcuts';
		description: 'All System Command Shortcuts';
		with: [
			self buildSettingsFor: redefinedInstances keys on: aBuilder.
			self 
				buildSettingsFor: (self registeredInstances copyWithoutAll: redefinedInstances keys)
				on: aBuilder.
		]