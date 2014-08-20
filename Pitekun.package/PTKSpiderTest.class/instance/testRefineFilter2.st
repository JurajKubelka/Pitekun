tests
testRefineFilter2
	| node cls2add cls3Add |
	cls2add := PTKClassForTest2 >> #addInPTK.
	cls3Add := PTKClassForTest3 >> #add:.
	node := spider addCompiledMethod: cls2add.
	self resetTrigger.
	spider addFilter: PTKSamePackageMethodFilter new.
	spider addImplementorsOf: #add: from: node.
	self 
		assertNodes: { cls2add. cls3Add. } 
		edges: { cls2add -> cls3Add. }
		trigger: { { {}. {}. { cls3Add }. { cls2add -> cls3Add }. {} } }.