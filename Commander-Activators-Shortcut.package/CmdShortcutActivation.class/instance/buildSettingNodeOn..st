settings
buildSettingNodeOn: aBuilder
	| nodeBuilder |
	nodeBuilder := aBuilder 
		nodeClass: CmdShortcutSetting name: self id.
	nodeBuilder node item shortcutActivation: self.
	^nodeBuilder