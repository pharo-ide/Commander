accessing
findItemSimilarTo: aMenuItem ifPresent: presentBlock ifAbsent: absentBlock

	contents 
		detect: [:each | each isSimilarTo: aMenuItem  ]
		ifFound: presentBlock
		ifNone: absentBlock