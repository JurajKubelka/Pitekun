visualization
addClass: aClass into: aView 
	| shape element |
	shape := RTMultiCompositeShape new.
	shape vertical.
	shape add: (RTLabel new text: #name; height: 8).
	shape add: (RTBox new color: (Color green alpha: 0.3); size: 20).
	element := shape elementOn: aClass.
	element @ RTDraggable @ RTPopup.
	aView add: element.
	^ element