tests
testAddCompiledMethod
	self startWithCompiledMethod1.
	self addCompiledMethod2.
	self 
		assertNodes: { compiledMethod1. compiledMethod2. } 
		edges: { compiledMethod1 -> compiledMethod2 } 
		trigger: { {{}. {}. {compiledMethod2}. {compiledMethod1 -> compiledMethod2}. {}} }.
	self assertHistory:  {
		startWithCompiledMethod1History at: 1.
		startWithCompiledMethod1History at: 2.
		'protocol3:' -> {	
			'oldCobweb:' -> ((startWithCompiledMethod1History at: 2) value at: 2) value.
			'newCobweb:' -> { 'nodes:' -> { compiledMethod1. compiledMethod2 }. 
									'edges:' -> { compiledMethod1 -> compiledMethod2 } }.
			'changes:' -> { {}. {}. {compiledMethod2}. {compiledMethod1 -> compiledMethod2}. {} } } }.