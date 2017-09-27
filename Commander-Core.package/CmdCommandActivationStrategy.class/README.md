I am a root of command activators hierarchy. My subclasses represent different ways how to create command instances in specific context, how to represent them to user, how initialize their state.

Users attach concrete activators to commands using class side methods marked with pragma #commandActivator.
For example to make YourCommand executable by shortcut you need following method:
	YourCommand class>>yourAppShortcutActivator
		<commandActivator>
		^CmdShortcutCommandActivator by: $e meta for: YourAppContext 

My instances should be declared for concrete context of application tool, subclass of CmdToolContext. Application/tool provides instance of this context for command lookup:
	activatorClass allDeclaredFor: aToolContext do: [:declaredActivator | ]
Activator should be used only in declared context which is ensured by lookup method. But you can check it manually:
	activator canBeUsedInContext: aToolContext
Also activator can check that command is executable for given context:
	activator canExecuteCommandInContext: aToolContext
While you can ask declared activators for such questions generally they supposed to be used only as prototypes. Declared activators create ready to use activators which keep information about current context and able to execute command. To create new instance use following expression:
	readyActivator := declaredActivator newActivationFor: aToolContext 
I implement convinient method to iterate only executable commands:
	activatorClass allExecutableIn: aToolContext do: [:readyActivator | ]
For ready activator instance I also create new instance of command with possibiity to initialize state using given context:
	command readParametersFromContext:  aToolContext 
		
Look at commands comments for details on this method.
	
Ready activator can execute command:
	readyActivator executeCommand
I perform it in three steps:
1) #prepareCommandForExecution. Command should retrieve all state required for execution from activation context. By default I ask command to prepare full execution:
	CmdCommandActivator>>prepareCommandForExecution
		actualActivationContext prepareExecutionOf: command  
During preparation commands can break execution by signalling CmdCommandAborted. For example It should happen if user cancel some confirmation dialog during command preparation.

2) Command execution. All logic is implemented by command itself (#execute method).

3) Applying execution result to activation context. I also delegate processing to command itself:
	CmdCommandActivator>>applyCommandResult
		actualActivationContext applyResultOf: command  
Idea is to be able interact with application when command completes. For example if user creates new package from browser then at the end of command browser should open created package.
 
For more details look at CmdCommand comments.

Internal Representation and Key Implementation Points.

    Instance Variables
	id:		<Symbol>
	command:		<CmdCommand>
	activationContextClass:		<CmdToolContext class>	activator declaration context
	actualActivationContext:		<CmdToolContext>	active execution context