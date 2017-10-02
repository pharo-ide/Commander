# Commander
Commander models application actions as first class objects\.

Every action is implemented as separate command class \(subclass of `CmdCommand`\) with `#execute` method and all state required for execution\.

Commands are reusable objects and applications provide various ways to access them (shortcuts, context menu, buttons, etc.)\.
This information is attached to command classes as activation strategies\. Currently there are three types of activations:

- `CmdShortcutCommandActivation`
- `CmdContextMenuCommandActivation`
- `CmdDragAndDropCommandActivation`

Strategies annotate command as class annotations. Look at project [ClassAnnotation](https://github.com/dionisiydk/ClassAnnotation) for details. For example following method will allow `RenamePackageCommand` to be executed by shortcut in possible system browser:
```Smalltalk
RenamePackageCommand class>>packageBrowserShortcutActivation
    <classAnnotation>
    ^CmdShortcutCommandActivation by: $r meta for: PackageBrowserContext
```
And for context menu:
```Smalltalk
RenamePackageCommand class>>packageBrowserMenuActivation
    <classAnnotation>
    ^CmdContextMenuCommandActivation byRootGroupItemFor: PackageBrowserContext
```
Activation strategies are always created with application context where they can be applied \(`PackageBrowserContext` in the example\)\.
Application should provide such contexts as subclasses of `CmdToolContext` with information about application state\.
Every widget can bring own context to interact with application as separate tool\.
For example system browser shows multiple panes which provide package context, class context and method context\.
And depending on the context the browser shows different menu and provides different shortcuts\.

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
    with: [ spec repository: 'github://dionisiydk/Commander:v0.3.x' ]
```

