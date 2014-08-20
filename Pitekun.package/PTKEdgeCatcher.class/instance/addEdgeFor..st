report manipulation
addEdgeFor: aNode 
	self report nodesDo: [ :eachNode |
		eachNode == aNode ifFalse: [ 
			(eachNode connectWith: aNode using: self) ] ]