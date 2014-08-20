tests
testClassAdded
	self startWatcher.
	self assert: track size equals: 0.
	self createNewClass.
	self stopWatcher.
	self assert: newClass name equals: newClassName.
	self assert: track size equals: 1.
	self assert: track first equals: newClass -> #added