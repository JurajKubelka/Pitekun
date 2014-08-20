tests
testClassRemoved
	self createNewClass.
	self startWatcher.
	self assert: track size equals: 0.
	newClass removeFromSystem.
	self stopWatcher.
	self assert: track size equals: 1.
	self assert: track first equals: newClass -> #removed.