accessing
secureMenuIcon
	"In case when icon should be mandatory property of command
	users should call this method. It ensure Form instance 
	which will indicate missing icon as a problem"
	
	^self defaultMenuIcon ifNil: [ Smalltalk ui iconNamed: #error ]