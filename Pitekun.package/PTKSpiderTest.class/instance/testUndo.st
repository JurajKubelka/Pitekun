tests
testUndo
	self addCompiledMethod1And2AndAssertAction.
	spider undo.
	self 
		assertNodes: { compiledMethod1 } 
		edges: {} 
		trigger: { { { compiledMethod2 }. { compiledMethod1 -> compiledMethod2 }. {}. {}. {} } }.
	spider redo.
	self 
		assertNodes: { compiledMethod1. compiledMethod2 } 
		edges: { compiledMethod1 -> compiledMethod2 } 
		trigger: {{ {}. {}. { compiledMethod2 }. { compiledMethod1 -> compiledMethod2 }. {} } }.