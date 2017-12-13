accessing
family
	^family ifNil: [ 
		family := self new 
			add: 'John' phone: '342 345';
			add: 'Bill' phone: '123 678';
			add: 'Marry' phone: '789 567';
			yourself]