view manipulation
constructEdge: aPTKMethodCallEdge 
	| newEdge from to |
	from := self view elementFromModel: aPTKMethodCallEdge source.
	to := self view elementFromModel: aPTKMethodCallEdge target.
	newEdge := aPTKMethodCallEdge uiAttributes builder edgeFrom: from to: to.
	newEdge model: aPTKMethodCallEdge.
	self report addedEdge: newEdge.