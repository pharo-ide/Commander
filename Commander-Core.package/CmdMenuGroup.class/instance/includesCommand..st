testing
includesCommand: aClass 
	"It answers only about itself without looking recursively into child groups"
	^contents anySatisfy: [:each |
		each isCommandItem and: [each includesCommand: aClass] ]