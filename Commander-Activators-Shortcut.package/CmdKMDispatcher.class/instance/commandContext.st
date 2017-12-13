dispatching
commandContext
	^commandContext ifNil: [target morph createCommandContext]