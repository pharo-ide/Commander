I am a root of first class commands hierarchy. 
My subclasses should just implement #execute method with all required state which is needed for command execution. 
Then users can attach various activation strategies to them which provide specific way how to create command instances, how to represent them to user, how initialize their state.

Activation strategies annotate command classes as class annotation. Look at ClassAnnotation for details.
For example to make YourCommand executable by shortcut you need to add following method to class side of command:
	YourCommand class>>yourAppShortcutActivation
		<classAnnotation>
		^CmdShortcutCommandActivation by: $e meta for: YourAppContext 
If you want execute command from context menu you need another activator:
	YourCommand class>>yourAppMenuActivation
		<classAnnotation>
		^CmdContextMenuCommandActivation byRootGroupItemFor: YourAppContext 

Any activation should be created for concrete context of application tool, subclass of CmdToolContext. In examples above it is YourAppContext.
To be able to use commands application/tool should provide instance of current context to perform command lookup:

	CmdShortcutCommandActivation allAvailableInContext: aToolContext do: blockWithActivation

It enumerate all shortcut activation strategies which are declared for given aToolContext. 
Found activation can check if command can be executed in given context or not:
	registeredActivation canExecuteCommandInContext: aToolContext
which  delegates question to context and then to command:
	aToolContext allowsExecutionOf: command
	command canBeExecutedInContext: aToolContext
By default It returns true. But my subclasses can implement it using specific information of given context.
It is important that this message is not taken into account in enumeration method. There are cases when users want all commands including the commands which could not be executed in current context. For example in context menu such commands can be disabled and it can be important to show them in special unclickable state. Currently all "disabled" commands are skipped during menu building. But it can be configurable in future versions.

Next thing to do with found activation is to create new activator instance which is responsible for command execution in given context:
	commandActivator := activationStrategy newActivatorFor: aToolContext
Command activator keeps information about activation context and it is able to execute command. It initializes command with the state relevant to the current context:
	command readParametersFromContext:  aToolContext 
By default It is the empty method and usually commands not override it. There is another method to prepare full state of command just before execution (see below). And for simplicity commands usually implement only this.
Some tools collect activators to represent commands to user. For example in context menu every item is based on activator. Using command instance it provides label and icon for the menu item. Commands provide default values for them which sometimes depend on internal command state. For such cases commands retrieve this state in advance from the given context instance in the method readParametersFromStandardContext:.

Command activator can execute the command:
	commandActivator executeCommand
It performs three steps:
1) Prepare command for execution.  Command should retrieve all state required for execution from given context. By default activator asks command using:
	command prepareFullExecutionInContext: aToolContext
During preparation commands can ask user for extra data. 
I provide empty implementation for this method and my subclasses overrides it.
Commands can signal CmdCommandAborted to break execution process. For example It happens when user cancel confirmation dialog during command preparation.

2) Command execution. All logic is implemented by command in #execute method.

3) Applying execution result to given context:
	command applyResultInContext: aToolContext 
Idea is to be able interract with application when command completes. For example if user creates new package from the browser then at the end the browser should  open created package.

Commands are supposed to be reusable for different contexts and activators. And these methods should be implemented with that in mind. They should not discover internal structure of contexts.

t is possible to override activation methods for specific contexts and send own set of messages to command. For example: 

	SpecialContextA>>allowsExecutionOf: aCommand
		 ^aCommand canBeExecutedInSpecialContextA: self
	
	SpecialContextA>>prepareFullExecutionOf: aCommand
		 aCommand prepareFullExecutionInSpecialContextA: self

	SpecialContextA>>applyResultOf: aCommand
		 aCommand applyResultInSpecialContextA: self

By default I can implement these extensions with standard context methods. And only particular subclasses will override them specifically:

	CmdCommand>>prepareFullExecutionInSpecialContextA: aSpecialContextA
		 self prepareFullExecutionInContext: aSpecialContextA

	SomeCommand>>prepareFullExecutionInSpecialContextA: aSpecialContextA
 		 "special logic to prepare command for execution"

Besides, specific command activation strategies can require own set of activation methods. For example CmdDragAndDropCommandActivator needs two contexts to prepare command. First context describes the place where drag was started. Last context describes drop target tool.  And for execution command should be prepared in both context. They bring different information and together they are supposed to provide all required data for command execution without extra user requests. 

Different activation strategies extends me with UI related messages. For example look at context menu activation. It asks me to build menu items:
	command fillContextMenu: aMenu using: anActivator
By default I just create standart item morph and allow subclasses to define default label and icon:	
- defaultMenuItemName
- setUpIconForMenuItem: aMenuItemMorph
But subclasses can override build method and represent themselves more specifically. For example they can provide menu item with check box. You can see such cases in morph menu.

The way how concrete type of activation strategy hook into application is responsibility of application. For example to support shortcuts based on commands application should define specific kmDispatcher for target morphs:
	YourAppMorph>>kmDispatcher
		^ CmdKMDispatcher attachedTo: self
with supporting method:
	YourAppMorph>>createCommandContext
		^YourAppContext for: self
		
If application wants context menu based on commands then it needs to hook into context menu part of application and ask context menu activation to build menu:
	menu := CmdContextMenuCommandActivator buildMenuFor: anAppMorph inContext: aToolContext
	
In future Commander will be deeply integrated in UI. So many things will work automatically