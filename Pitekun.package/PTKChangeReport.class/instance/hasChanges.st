report testing
hasChanges
	^ self newNodes notEmpty or: [ 
		self newEdges notEmpty or: [ 
			self removedNodes notEmpty or: [ 
				self removedEdges notEmpty ] ] ]