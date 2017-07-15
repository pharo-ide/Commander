accessing
findGroupLike: menuGroupClass ifExists: foundBlock

	contents detect: [ :each | each isKindOf: menuGroupClass] ifFound: foundBlock.
		
	contents do: [ :each | each findGroupLike: menuGroupClass ifExists: foundBlock ]