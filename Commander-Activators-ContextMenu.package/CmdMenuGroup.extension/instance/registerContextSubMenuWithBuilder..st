*Commander-Activators-ContextMenu
registerContextSubMenuWithBuilder: aBuilder

	(aBuilder item: self name)
		order: self order;
		target: self;
		icon: self icon;
		help: self description