tests
testInitializeHistory
	self assertHistory: { 'protocol1:' -> initializedHistory }.
	self assert: spider store cobwebs last newCobweb equals: spider cobweb.