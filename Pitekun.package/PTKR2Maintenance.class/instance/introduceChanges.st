view manipulation
introduceChanges
	self 
		removeEdgesFromModel: self modelReport removedEdges;
		removeNodesFromModel: self modelReport removedNodes;
		addCobwebItemsForModels: self modelReport newNodes;
		addCobwebItemsForModels: self modelReport newEdges;
		processActions.
	^ true