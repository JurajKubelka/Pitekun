report manipulation
revertReport: oldReport
	self report
		removedNodes: oldReport newNodes;
		removedEdges: oldReport newEdges;
		addedNewNodes: oldReport removedNodes;
		addedNewEdges: oldReport removedEdges
		