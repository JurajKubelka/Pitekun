accesing
add: aRTElement into: aRTElementWithPTKAst
	| highlightedElements |
	highlightedElements := aRTElementWithPTKAst 
										attributeAt: self highlightedElementsAttribute
										ifAbsentPut: [ RTGroup new ].
	highlightedElements add: aRTElement