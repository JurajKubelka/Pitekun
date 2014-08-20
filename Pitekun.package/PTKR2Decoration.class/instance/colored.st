public
colored
	decoration := RTDecoration new 
						shape: (RTEllipse new color: Color red; borderColor: Color black; size: 10; yourself)
							tooltip: 'Set red color' 
							action: [ :anElement | 
											anElement trachelShape color: Color red.
											anElement signalUpdate. ];
						shape: (RTEllipse new color: Color yellow; borderColor: Color black; size: 10; yourself)
							tooltip: 'Set yellow color'
							action: [ :anElement | 
											anElement trachelShape color: Color yellow.
											anElement signalUpdate. ];
						shape: (RTEllipse new color: Color green; borderColor: Color black; size: 10; yourself)
							tooltip: 'Set green color'
							action: [ :anElement | 
											anElement trachelShape color: Color green.
											anElement signalUpdate. ];
						yourself