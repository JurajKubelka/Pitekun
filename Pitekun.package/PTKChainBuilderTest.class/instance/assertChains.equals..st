asserting
assertChains: chains equals: expectedChains
	self assert: chains size equals: expectedChains size.
	self assert: chains asArray equals: expectedChains.