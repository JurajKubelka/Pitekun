double dispatching
edgeFromMethod: aPTKMethod toVariables: aPTKVariables 
	| edge |
	edge := PTKSendersEdge new
		source: aPTKMethod;
		target: aPTKVariables;
		yourself.
	self configureItem: edge.
	^ self addEdge: edge