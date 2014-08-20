tests
testMethodRemoved
	self createNewClass.
	self createNewMethod.
	self startWatcher.
	self removeNewMethod.
	self stopWatcher.
	self assert: track size equals: 1.
	self assert: track first equals: newMethod -> #removed -> newClass.