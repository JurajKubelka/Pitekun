tests
testInstallExtension
	| extension |
	self assert: browser extensions size equals: 0.
	browser
		installExtension: PTKSystemWatcher;
		addClassesMatching: self classesMatchingPattern.
	self assert: browser extensions size equals: 1.
	extension := browser extensions first.
	self assert: extension matchingStrings size equals: 1.
	self assert: extension matchingStrings first equals: self classesMatchingPattern.
	self assert: extension applicants size equals: 1.
	self assert: extension applicants first equals: browser.
