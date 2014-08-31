visualiation-elements
addClass: aClass into: aView highlight: aHighlightedClass
	| color shape element |
	shape := RTMultiCompositeShape new.
	shape vertical.
	shape add: (RTLabel new text: #name; height: 8).
	color := aClass == aHighlightedClass ifTrue: [ Color yellow alpha: 0.3 ] ifFalse: [ Color green alpha: 0.3 ].
	shape add: (RTBox new color: color; size: 20).
	element := shape elementOn: aClass.
	element @ RTDraggable @ RTPopup.
	aView add: element.
	^ element