settings
settingInputWidgetForNode: aShortcutSetting
	| catcherMorph theme |
	theme := UITheme builder.
	catcherMorph := KMCatcherMorph for: aShortcutSetting.
	^ theme newRow: {catcherMorph}