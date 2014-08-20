tests
testChainsToNodeLength
	" a, b, c, d.
	        e, d.
	     g, f, d."
	| node chains |
	spider 
		add: #a -> #b;
		add: #b -> #c;
		add: #c -> #d;
		add: #e -> #d;
		add: #f -> #d;
		add: #g -> #f.
	self 
		resetTrigger;
		assertNodes: { #a. #b. #c. #d. #e. #f. #g } 
			edges: { #a -> #b. #b -> #c. #c -> #d. #e -> #d. #f -> #d. #g -> #f } 
			trigger: {}.
	node := spider nodeFromModel: #d.
	builder report: spider store cobwebs last.
	chains := builder chainsToNode: node length: 2.
	self 
		assertChains: chains 
		equals: { { #c -> #d. #b -> #c. }.
			 		 { #f -> #d. #g -> #f. } }.
	chains := builder chainsToNode: node length: 1.
	self 
		assertChains: chains 
		equals: { { #c -> #d. }.
					 { #e -> #d. }.
			 		 { #f -> #d. } }.
	chains := builder chainsToNode: node length: 3.
	self 
		assertChains: chains 
		equals: { { #c -> #d. #b -> #c. #a -> #b. } }.
	chains := builder chainsToNode: node length: 4.
	self 
		assertChains: chains 
		equals: {}.
