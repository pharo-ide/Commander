*Commander-Activators-ContextMenu
registerContextSubMenuWithBuilder: aBuilder

	(aBuilder item: self name)
		order: self order;
		parent: parentGroup name;
		target: self;
		icon: self icon;
		help: self description