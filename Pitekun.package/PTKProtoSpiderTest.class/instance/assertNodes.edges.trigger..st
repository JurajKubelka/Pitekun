asserting
assertNodes: aNodes edges: anEdges trigger: expectedTrigger
	self assert: spider nodes size equals: aNodes size.
	self assert: spider edges size equals: anEdges size.
	self assert: spider modelNodes equals: aNodes.
	self assert: spider modelEdges equals: anEdges.
	self assert: trigger size equals: expectedTrigger size.
	self assert: trigger asArray equals: expectedTrigger.
	self resetTrigger.