visualiation-elements
addPackage: aRPackage into: aView highlight: aHighlightedPackage
	| shape element color |
	shape := RTMultiCompositeShape new.
	shape vertical.
	color := aRPackage == aHighlightedPackage ifTrue: [ Color yellow alpha: 0.3 ] ifFalse: [ Color blue alpha: 0.3 ].
	shape add: (RTLabel new text: #name; height: 8).
	shape add: (RTBox new color: color; size: 20).
	element := shape elementOn: aRPackage.
	element @ RTDraggable @ RTPopup.
	aView add: element.
	^ element