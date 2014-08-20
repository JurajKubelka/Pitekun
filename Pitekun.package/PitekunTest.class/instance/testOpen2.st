tests
testOpen2
	ui := browser open.
	self assert: ui model equals: browser.
	self assert: browser view elements size equals: 0.