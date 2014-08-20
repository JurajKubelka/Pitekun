double dispatching
edgeFromSenders: aPTKMethod toMethod: aPTKSenders
	| edge |
	edge := PTKSendersEdge new
		source: aPTKSenders;
		target: aPTKMethod;
		yourself.
	self configureItem: edge.
	^ self addEdge: edge