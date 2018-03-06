menu creation
buildMenuInContext: aToolContext
	| menu |
	menu := CmdMenu activatedBy: self.
	menu buildInContext: aToolContext.
	^ menu