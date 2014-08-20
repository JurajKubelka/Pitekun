removing
removeConnectedEdges: aRTElement 
	aRTElement connectedEdges do: [ :eachEdge | 
		eachEdge remove ]