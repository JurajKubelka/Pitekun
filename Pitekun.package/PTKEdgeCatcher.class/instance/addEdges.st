report manipulation
addEdges
	self report newNodes do: [ :eachNewNode |
		self addEdgeFor: eachNewNode ]