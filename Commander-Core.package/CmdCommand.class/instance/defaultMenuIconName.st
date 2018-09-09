accessing
defaultMenuIconName
	"For compatibility it delegates actual logic to class side. But it should be just 
		^nil
	Not really nice to return nil. But it is already expected by many tools.
	So it is easy to allow nil.
	When users want to define real icon instead of standard named icon
	they should override another instance side method #defaultMenuIcon
	which should return desired Form instance"
	^self class defaultMenuIconName