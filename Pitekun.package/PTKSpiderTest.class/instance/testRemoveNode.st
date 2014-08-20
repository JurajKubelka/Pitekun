tests
testRemoveNode
	| node1 |
	self addCompiledMethod1And2AndAssertAction.
	node1 := self node1.
	spider removeNode: node1.
	self
		assertNodes: {compiledMethod2}
		edges: {}
		trigger: { { {compiledMethod1}. {(compiledMethod1 -> compiledMethod2)}. {}. {}. {} } }