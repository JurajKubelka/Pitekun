visualiation-elements
addMethod: aCompiledMethod into: aView highlight: aHighlightedCompiledMethod
	| element color |
	color := aCompiledMethod == aHighlightedCompiledMethod ifTrue: [ Color yellow alpha: 0.3 ] ifFalse: [ Color gray alpha: 0.3 ].
	element := ((RTLabel new text: #selector; height: 8) + (RTBox new color: color; size: 20)) elementOn: aCompiledMethod.
	element @ RTDraggable @ RTPopup.
	aView add: element.
	^ element