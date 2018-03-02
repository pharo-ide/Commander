visitor
acceptSettings: aVisitor 

	shortcutActivation isRedefined ifTrue: [ ^ aVisitor visitCmdShortcutSetting: self]