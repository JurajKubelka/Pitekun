support
addCompiledMethod1And2AndAssertAction
	self addCompiledMethod1.
	self addCompiledMethod2.
	self 
		assertNodes: { compiledMethod1. compiledMethod2 } 
		edges: { compiledMethod1 -> compiledMethod2 } 
		trigger: { 
			"first" { {}. {}. { compiledMethod1 }. {}. {} }.
			"second" { {}. {}. { compiledMethod2 }. { compiledMethod1 -> compiledMethod2 }. {} } }.