command execution
tryExecuteCommandInContext: aToolContext byEvents: anEventBuffer
	
	| activator |
	(keyCombination matches: anEventBuffer) ifTrue: [ 
		(self isActiveInContext: aToolContext) ifFalse: [ ^false].
		
		(keyCombination matchesCompletely: anEventBuffer)
			ifTrue: [ KMBuffer uniqueInstance completeMatch.
				activator := self newActivatorFor: aToolContext.
				activator executeCommand]
			ifFalse: [ KMBuffer uniqueInstance partialMatch].
		^true].
	^false