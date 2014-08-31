visualization
addMethod: aCompiledMethod into: aView 
	| element |
	element := ((RTLabel new text: #selector; height: 8) + (RTBox new color: (Color gray alpha: 0.3); size: 20)) elementOn: aCompiledMethod.
	element @ RTDraggable @ RTPopup.
	aView add: element.
	^ element