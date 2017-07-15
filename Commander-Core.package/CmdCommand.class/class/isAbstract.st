testing
isAbstract
	"Commands are abstract if they have subclasses. If you want such command be used as normal one you need override this method like 
		^self == YourCommandWithSubclasses ifTrue: [ false ] ifFalse: [ super isAbstract ]
	Without it system will not find command which has subclasses"
	^self subclasses notEmpty