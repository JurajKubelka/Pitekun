report manipulation
updateElementAndEdgeList
	self rootElements
			removeAll: self report removedElements;
			addAll: self report newElements.
	self rootEdges
			removeAll: self report removedEdges;
			addAll: self report newEdges.
