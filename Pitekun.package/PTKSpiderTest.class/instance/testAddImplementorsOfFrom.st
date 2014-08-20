tests
testAddImplementorsOfFrom
	| node1 barAst |
	self startWithCompiledMethod1.
	node1 := spider nodeFromModel: compiledMethod1.
	barAst := node1 ast body statements first value.
	spider addImplementorsOfAst: barAst from: node1.
	self 
		assertNodes: { compiledMethod1. compiledMethod1 -> { compiledMethod2. compiledMethod3 } } 
		edges: { compiledMethod1 -> (compiledMethod1 -> { compiledMethod2. compiledMethod3 }) }
		trigger: { { {}. {}. 
					{ compiledMethod1 -> { compiledMethod2. compiledMethod3 } }. 
					{ compiledMethod1 -> (compiledMethod1 -> { compiledMethod2. compiledMethod3 }) }.
					{} } }.