accessing
collectActivatorsFrom: aClass

	^aClass classSide methods 
		select: [ :each | each hasPragmaNamed: #commandActivator ] 
		thenCollect: [ :each | 
			(self perform: each selector)
				id: each selector]