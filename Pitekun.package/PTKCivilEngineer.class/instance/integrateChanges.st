report manipulation
integrateChanges
	self inRecursion ifFalse: [
		self report hasChanges ifTrue: [ 
			self cloner newCobweb
				removeNodes: self report removedNodes;
				removeEdges: self report removedEdges;
				addNodes: self report newNodes;
				addEdges: self report newEdges ] ]