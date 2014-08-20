private actions
highlightAstElement: aRTElement calling: aRTElementWithPTKAst 
	| model |
	model := aRTElement model.
	(model calls: aRTElementWithPTKAst model)
 		ifTrue: [ self setColor: aRTElement from: aRTElementWithPTKAst ]