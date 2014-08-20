private actions
highlightElement: aRTElement ifVariable: aRTElementWithVariable 
	| model |
	model := aRTElement model.
	(model isVariableAs: aRTElementWithVariable model)
 		ifTrue: [ self setColor: aRTElement from: aRTElementWithVariable ]