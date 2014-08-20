report accessing
nodeThat: oneArgBlock
	| node |
	node := self oldCobweb nodeThat: oneArgBlock.
	^ node 
		ifNil: [ self newNodes detect: oneArgBlock ifNone: [ nil ] ]
		ifNotNil: [ (self removedNodes includes: node) ifFalse: [ node ] ifTrue: [ nil ] ]
