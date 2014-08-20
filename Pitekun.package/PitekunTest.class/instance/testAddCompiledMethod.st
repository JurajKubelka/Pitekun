tests
testAddCompiledMethod
	| elementsSize |
	ui := browser open.
	self assert: browser view elements size equals: 0.
	browser addCompiledMethod: PTKClassForTest3 >> #add:.
	self assert: browser view elements size > 1.
	elementsSize := browser spiderUI logistician layoutMan rootElements size.
	self assert: elementsSize equals: 1. 