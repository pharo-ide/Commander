settings
buildSettingsFor: activations on: aBuilder
	| sorted |
	sorted := activations sorted: [ :a :b | a commandClass name <= b commandClass name ].
	sorted do: [ :each |	each buildSettingNodeOn: aBuilder]