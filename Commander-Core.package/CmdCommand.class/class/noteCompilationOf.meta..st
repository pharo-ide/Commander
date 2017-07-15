compilation
noteCompilationOf: aSelector meta: isMeta
	"we should reset activations cache when any class side method was changed"
	isMeta ifTrue: [ self resetAll ]