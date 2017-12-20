*Commander-SpecSupport
createCommandContext
	"Subclases should override it if they provide any selection"
	^self createCommandContextForSelection: #()