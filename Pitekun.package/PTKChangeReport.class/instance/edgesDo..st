enumerating
edgesDo: aOneArgBlock 
	self oldCobweb edges do: [ :eachEdge |
		(self removedEdges includes: eachEdge) 
			ifFalse: [ aOneArgBlock value: eachEdge ] ].
	self newEdges do: aOneArgBlock. 