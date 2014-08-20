report accessing
edgesTo: aNode 
	| col |
	col := PTKEdges new.
	self edgesDo: [ :eachEdge |
		eachEdge target = aNode ifTrue: [ col add: eachEdge ] ].
	^ col