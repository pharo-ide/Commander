instance creation
for: dragContextClass toDropIn: dropContextClass
	^(self for: dragContextClass)
		dropContextClass: dropContextClass