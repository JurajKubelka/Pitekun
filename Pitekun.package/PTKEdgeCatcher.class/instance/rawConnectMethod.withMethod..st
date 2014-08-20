double dispatching
rawConnectMethod: sourceMethod withMethod: targetMethod
	| edge |
	(self report includesEdgeFrom: sourceMethod to: targetMethod)
		ifTrue: [ ^ self ].
	edge := PTKMethodCallEdge new source: sourceMethod; target: targetMethod; yourself.
	self configureItem: edge.
	self addEdge: edge.