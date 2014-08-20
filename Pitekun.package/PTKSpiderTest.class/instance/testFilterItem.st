tests
testFilterItem
	| filter node1 |
	filter := spider filterItem: compiledMethod2.
	self startWithCompiledMethod1.
	node1 := spider nodeFromModel: compiledMethod1.
	spider addImplementorsOf: #barInPTK from: node1.
	self 
		assertNodes: { compiledMethod1. compiledMethod3 } 
		edges: {compiledMethod1 -> compiledMethod3} 
		trigger: { { {}. {}. {compiledMethod3}. {compiledMethod1 -> compiledMethod3}. {} } }.
	spider removeFilter: filter.
	self 
		assertNodes: { compiledMethod1. compiledMethod3 } 
		edges: {compiledMethod1 -> compiledMethod3} 
		trigger: { }.