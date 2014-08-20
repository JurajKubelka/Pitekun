tests-event handling
testClassAdded
	| classes |
	classes := {PTKClassForTest1. PTKClassForTest2. PTKClassForTest3. PTKClassForTest4}.
	self installSystemWatcher.
	self assert: browser shownClasses size equals: 4.
	self assert: (browser shownClasses allSatisfy: [ :eachClass | classes includes: eachClass ]).
	self createNewClass.
	self assert: browser shownClasses size equals: 5.
	self assert: browser shownClasses last equals: newClass