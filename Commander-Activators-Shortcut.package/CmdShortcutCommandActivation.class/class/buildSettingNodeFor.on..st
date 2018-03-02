settings
buildSettingNodeFor: aShortcutActivation on: aBuilder

	| nodeBuilder |
	nodeBuilder := aBuilder 
		nodeClass: CmdShortcutSetting name: aShortcutActivation id.
	nodeBuilder node item shortcutActivation: aShortcutActivation