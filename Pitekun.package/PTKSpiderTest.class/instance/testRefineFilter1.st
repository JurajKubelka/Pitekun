tests
testRefineFilter1
	| node1 cls1add colAdd |
	cls1add := PTKClassForTest1 >> #addInPTK.
	colAdd := OrderedCollection >> #add:.
	node1 := spider addCompiledMethod: cls1add.
	self resetTrigger.
	spider addFilter: PTKSamePackageMethodFilter new.
	spider addImplementorsOf: #add: from: node1.
	self 
		assertNodes: { cls1add. colAdd. } 
		edges: { cls1add -> colAdd. }
		trigger: { { {}. {}. { colAdd }. { cls1add -> colAdd }. {} } }.