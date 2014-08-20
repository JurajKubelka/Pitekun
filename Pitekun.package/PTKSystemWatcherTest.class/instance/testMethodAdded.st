tests
testMethodAdded
	self createNewClass.
	self startWatcher.
	self createNewMethod.
	self stopWatcher.
	self assert: track size equals: 1.
	self assert: track first equals: newMethod -> #added -> newClass.