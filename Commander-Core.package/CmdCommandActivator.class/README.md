I responsible to execute the command instance in concrete application context according to given activation strategy. 

I define three steps to execute command:

1) #prepareCommandForExecution. Command should retrieve all state required for execution from activation context. By default ths logic is delegated to the command though context instance:
	CmdCommandActivator>>prepareCommandForExecution
		actualActivationContext prepareExecutionOf: command  
During preparation commands can break execution by signalling CmdCommandAborted. For example It should happen if user cancel some confirmation dialog during command preparation.

2) Command execution. All logic is implemented by command itself (#execute method).
	command execute.
	
3) Applying execution result to activation context. It is also delegated to the command itself though context instance:
	CmdCommandActivator>>applyCommandResult
		actualActivationContext applyResultOf: command  
Idea is to be able interact with application when command completes. For example if user creates new package from browser then at the end the browser should open created package.
 
For more details look at CmdCommand comments.

I am able to check if comand can be executed in my context:
	activator canExecuteCommand

Different packages extends me to represent commands according to concrete activation strategy. For example context menu will ask me to create menu items. In such cases I just delegate actual logic to the command itself.

Complex activation strategy can provide my subclasses. For example Drag&Drop command activation requires two steps to prepare and execute command. And there is CmdDragAndDropCommandActivator which incapsulates two active contexts where command should be executed. Look at it for details.  

My instances are created by activation strategy:
	activationStratagy newActivatorFor: aToolContext

Internal Representation and Key Implementation Points.

    Instance Variables
	command:		<CmdCommand> an activating command
	context:		<CmdToolContext>	an active context where command is activated
	activationStrategy:		<CmdCommandActivationStrategy>	strategy which defines how command should be accessed and executed in given context