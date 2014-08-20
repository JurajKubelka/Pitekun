report testing
includesEdgeFrom: sourceMethod to: targetMethod
	self edgesDo: [ :eachEdge |
		(eachEdge source = sourceMethod and: [ eachEdge target = targetMethod ])
			ifTrue: [ ^ true ] ].
	^ false