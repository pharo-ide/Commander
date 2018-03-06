printing
printWhichButton
	"Return a string identifying expected pressed buttons"
	self isRedButton ifTrue:[ ^'red' ].
	self isYellowButton ifTrue:[ ^'yellow'].
	self isBlueButton ifTrue:[ 'blue'].
	
	^'uknown button'