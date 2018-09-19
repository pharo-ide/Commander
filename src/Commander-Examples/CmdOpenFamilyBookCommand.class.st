"
I am an example of command which is activated from world menu or global shortcut.
I open family contact book
"
Class {
	#name : #CmdOpenFamilyBookCommand,
	#superclass : #CmdCommand,
	#category : 'Commander-Examples'
}

{ #category : #activation }
CmdOpenFamilyBookCommand class >> globalShortcutActivation [
	"The code is commented to avoid this example command to be global world shortcut.
	Uncomment following pragma when you want to place with this"
	"<classAnnotation>"
	
	^CmdShortcutActivation by: $o meta, $f meta for: CmdWorldMenuContext 
]

{ #category : #activation }
CmdOpenFamilyBookCommand class >> worldMenuActivation [
	"The code is commented to avoid this example command to be world menu.
	Uncomment following pragma when you want to place with this"
	"<classAnnotation>"
	
	^CmdContextMenuActivation byRootGroupItemFor: CmdWorldMenuContext 
]

{ #category : #accessing }
CmdOpenFamilyBookCommand >> defaultMenuItemName [
	^'Family contact book'
]

{ #category : #execution }
CmdOpenFamilyBookCommand >> execute [
	CmdContactBookPresenter familyExample
]
