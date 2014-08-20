configuration
on: aPitekun
	"It adds menu into Pitekun"
	| menuBuilder |
	menuBuilder := RTMenuBuilder new view: aPitekun view.
	menuBuilder 
		menu: '<-' background: Color yellow callback: [ aPitekun undo ];
		menu: '->' background: Color yellow callback: [ aPitekun redo ];
		menu: 'Zoom In' background: Color lightGreen callback: [ RTZoomInMove on: aPitekun view ];
		menu: 'Zoom Out' background: Color lightGreen callback: [ RTZoomOutMove on: aPitekun view ]