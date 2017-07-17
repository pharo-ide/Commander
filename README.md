# Commander
Commander models application actions as first class objects\.

Every action is implemented as separate command class \(subclass of `CmdCommand`\) with `#execute` method and all state required for execution\.

Commands are reusable objects and applications provide various ways to access them (shortcuts, context menu, buttons, etc.)\.
This information is attached to command classes as activator objects\. Currently there are three types of activators:

- `CmdShortcutCommandActivator`
- `CmdContextMenuCommandActivator`
- `CmdDragAndDropCommandActivator`

Activators are declared in command class side methods marked with pragma `#commandActivator`\.
For example following method will allow `RenamePackageCommand` to be executed by shortcut in possible system browser:
```Smalltalk
RenamePackageCommand class>>packageBrowserShortcutActivator
    <commandActivator>
    ^CmdShortcutCommandActivator by: $r meta for: PackageBrowserContext
```
And for context menu:
```Smalltalk
RenamePackageCommand class>>packageBrowserMenuActivator
    <commandActivator>
    ^CmdContextMenuCommandActivator byRootGroupItemFor: PackageBrowserContext
```
Activators are always declared with application context where they can be applied \(`PackageBrowserContext` in example\)\.
Application should provide such contexts as subclasses of `CmdToolContext` with information about application state\.
Every widget can bring own context to interact with application as separate tool\.
For example system browser shows multiple panes which provide package context, class context and method context\.
And depending on context browser shows different menu and provides different shortcuts\.

## Installation
```Smalltalk
Metacello new
  baseline: 'Commander';
  repository: 'github://dionisiydk/Commander';
  load.
```
Use following snippet for stable dependency in your project baseline:
```Smalltalk
spec
    baseline: 'Commander'
    with: [ spec repository: 'github://dionisiydk/Commander:v0.2.x' ]
```

