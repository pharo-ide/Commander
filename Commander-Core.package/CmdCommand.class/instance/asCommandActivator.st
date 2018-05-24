converting
asCommandActivator
	^CmdCommandActivator new 
		command: self;
		context: CmdNullToolContext new;
		activationStrategy: (CmdManualActivationStrategy withAnnotatedClass: self class)