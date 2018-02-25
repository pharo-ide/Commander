accessing
iconName
	"Not really nice to return nil. But it is already expected by many tools.
	So it is easy to allow nil.
	Users should use method #icon which returns Form instance"
	
	^nil