I describe the context of application where command can be used according to specified activation strategy.

My subclasses should implement single method #describes: which detects if given context instance is suitable for the context definition which subclass represents.

Simplest way to define context is using it class. Look at CmdSimpleContextDefinition which implements this logic.
Activation strategies use context definition to specify where command can be used. For simplicity they can specify class of context. It will be converted to simple definition