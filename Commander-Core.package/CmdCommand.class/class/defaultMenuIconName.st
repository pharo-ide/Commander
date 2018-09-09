accessing
defaultMenuIconName
	"For compatibility the actual icon named can be defined on class side.
	But right way it to use same instance side method.

	Not really nice to return nil. But it is already expected by many tools.
	So it is easy to allow nil.
	But users should use instance side method defaultMenuIcon which should return Form instance"
	^nil