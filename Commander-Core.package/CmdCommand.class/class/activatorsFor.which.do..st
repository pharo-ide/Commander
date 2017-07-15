accessing
activatorsFor: aToolContext which: conditionBlock do: actionBlock

	self activatorsFor: aToolContext do: [ :activator | 
		(conditionBlock value: activator) ifTrue: [actionBlock value: activator]]