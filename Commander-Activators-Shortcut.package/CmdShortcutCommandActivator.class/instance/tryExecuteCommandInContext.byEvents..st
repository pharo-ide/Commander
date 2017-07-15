command execution
tryExecuteCommandInContext: aToolContext byEvents: anEventBuffer
	
	| activator |
	(keyCombination matches: anEventBuffer) ifTrue: [ 
		(self canExecuteCommandInContext: aToolContext) ifFalse: [ ^false].
		
		(keyCombination matchesCompletely: anEventBuffer)
			ifTrue: [ KMBuffer uniqueInstance completeMatch.
				activator := self newActivationFor: aToolContext.
				activator executeCommand]
			ifFalse: [ KMBuffer uniqueInstance partialMatch].
		^true].
	^false