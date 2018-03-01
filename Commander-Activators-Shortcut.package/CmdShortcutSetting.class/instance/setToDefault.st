accessing
setToDefault

	shortcutActivation := shortcutActivation revertRedefinedInstanceIfAbsent: [
		self inform: 'Annotation not exists anymore'. 
		^self].
		
	self updated