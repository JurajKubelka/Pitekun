tests
testAddImplementorsOfFrom2
	| node1 |
	self startWithCompiledMethod1.
	node1 := spider nodeFromModel: compiledMethod1.
	spider addImplementorsOf: #barInPTK from: node1.
	self resetTrigger.
	"the same click again"
	spider addImplementorsOf: #barInPTK from: node1.
	self 
		assertNodes: { compiledMethod1. compiledMethod2. compiledMethod3. } 
		edges: { compiledMethod1 -> compiledMethod2. compiledMethod1 -> compiledMethod3 }
		trigger: { }.