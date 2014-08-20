tests-event handling
testClassRemoved
	| numberOfShownClasses |
	self createNewClass.
	self installSystemWatcher.
	numberOfShownClasses := browser shownClasses.
	self assert: (browser shownClasses includes: newClass).
	newClass removeFromSystem.
	self assert: browser shownClasses size equals: numberOfShownClasses size - 1.
	self deny: (browser shownClasses includes: newClass).
	self deny: ((browser currentSelection collect: #model) 
							includes: newClass).
