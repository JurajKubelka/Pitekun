setup configuration
setupView: aRTView target: aPitekun
	aRTView @ RTDraggableView.
"	aRTView 
		addMenu: '<-' callback: [ aPitekun undo ];
		addMenu: '->' callback: [ aPitekun redo ];
		addMenu: 'In' callback: [ RTZoomInMove on: aRTView ];
		addMenu: 'Out' callback: [ RTZoomOutMove on: aRTView ]."