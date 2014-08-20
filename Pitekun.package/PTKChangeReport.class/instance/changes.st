report accessing
changes
	^ Array
		with: (self removedNodes collect: #model as: Array)
		with: (self removedEdges collect: #model as: Array)
		with: (self newNodes collect: #model as: Array)
		with: (self newEdges collect: #model as: Array)
		with: (self actions collect: #model as: Array)