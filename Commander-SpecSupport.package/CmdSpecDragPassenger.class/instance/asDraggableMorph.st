converting
asDraggableMorph
	^(draggedItems collect: [:each | sourcePresenter displayBlock value: each])
	 	asDraggableMorph