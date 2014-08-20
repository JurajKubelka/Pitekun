report manipulation
fillReport: oldReport
	self report
		removedNodes: oldReport removedNodes;
		removedEdges: oldReport removedEdges;
		addedNewNodes: oldReport newNodes;
		addedNewEdges: oldReport newEdges
		