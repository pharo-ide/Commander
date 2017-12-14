instance creation
from: sourcePresenter on: aDragPassenger with: draggedItems

	^self new 
		sourcePresenter: sourcePresenter;
		commandPassenger: aDragPassenger;
		draggedItems: draggedItems
