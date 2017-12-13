accessing
coworkers
	^coworkers ifNil: [ 
		coworkers := self new 
			add: 'Stef' phone: '112 378';
			add: 'Pavel' phone: '898 678';
			add: 'Marcus' phone: '444 888';
			yourself]