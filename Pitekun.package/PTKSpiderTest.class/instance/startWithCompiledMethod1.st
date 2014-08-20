support
startWithCompiledMethod1
	spider addCompiledMethod: compiledMethod1.
	self 
		assertNodes: { compiledMethod1 } 
		edges: {} 
		trigger: {{{}. {}. {compiledMethod1}. {}. {}}}.
	self assertHistory: startWithCompiledMethod1History.