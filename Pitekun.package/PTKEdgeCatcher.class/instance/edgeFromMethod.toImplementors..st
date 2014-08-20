double dispatching
edgeFromMethod: aPTKMethod toImplementors: aPTKImplementors
	| edge |
	edge := PTKImplementorsEdge new
		source: aPTKMethod;
		target: aPTKImplementors;
		yourself.
	self configureItem: edge.
	^ self addEdge: edge