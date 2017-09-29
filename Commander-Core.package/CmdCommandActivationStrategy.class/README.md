I am a root of command activation strategy hierarchy. My subclasses represent different ways how to access and execute commands in specific context, how to represent them to user, how initialize their state.

Users attach concrete activation strategy to commands as class annotation (look at ClassAnnotation comment).
For example to make YourCommand executable by shortcut you need following method:
	YourCommand class>>yourAppShortcutActivator
		<classAnnotation>
		^CmdShortcutCommandActivator by: $e meta for: YourAppContext 

My instances should be created for concrete context of application tool, subclass of CmdToolContext. Application/tool provides instance of this context for the command lookup:
	CmdShortcutCommandActivator allAvailableInContext: aToolContext do: [:activationStrategy  | ]
This method enumerates all registered strategies which are declared to be used in given context. You can check it  manually: 
	anActivationStrategy canBeUsedInContext: aToolContext
There is another enumaration method to access all strategies which are really able execute commands in specified context:
	CmdShortcutCommandActivator allExecutableInContext: aToolContext do: [:activationStrategy  | ]
Each command defines the method which checks that given context is appropriate for command execution:
	commandClass canBeExecutedInContext: aToolContext.
Also you can ask the activation strategy about it:
	anActivationStrategy canExecuteCommandInContext: aToolContext

My instances itself are not supposed to execute commands. For this purpose you  need an activator instances:
	activator := anActivationStrategy newActivatorFor: aToolContext
The activator instance incapsulates the current context where command should be executed. And you can work with it as a self containt object.
You can check if activator can execute the command:
	activator canExecuteCommand
You can execute the command:
	activator executeCommand
Internally activator creates command instance and initializes it with the state related to the current context. 
But actual logic of these operations is implemented by command itself. So activator delegates it to the command:
	command readParametersFromContext:  context 
	command prepareFullExecutionInContext: context
	command execute.
Iinitialization logic of the command depends on the type of activation strategy. For example drag and drop activation will require two steps to prepare command:
	command prepareExecutionInDragContext: aToolContext
First step will initialize state of command which is available from the context of drag operation.
	command prepareExecutionInDropContext: aToolContext
And last step will initialize state of command in context of drop operation.
For details look at CmdDragAndDropCommandActivation comment.

I also provide simple method to work with all commands using activators prepared for the given context:
	activationStrategyClass activateAllInContext: aToolContext by: [:activator | ]
You can also collect all activators:
	activationStrategyClass creatActivatorsExecutableInContext: aToolContext


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