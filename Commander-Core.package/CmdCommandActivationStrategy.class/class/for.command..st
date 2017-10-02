instance creation
for: aToolContextClass command: aCommandClass
	"This method is created to be used in tests. 
	Normally annotatedClass is initialized by system during annotation registry building"
	
	^ (self for: aToolContextClass) 
			annotatedClass: aCommandClass