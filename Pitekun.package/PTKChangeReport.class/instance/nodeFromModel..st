report accessing
nodeFromModel: anObject
	| node |
	node := self oldCobweb nodeFromModel: anObject.
	^ node 
		ifNil: [ self newNodes detect: [ :eachNode | eachNode model = anObject ] ifNone: [ nil ] ]
		ifNotNil: [ (self removedNodes includes: node) ifFalse: [ node ] ifTrue: [ nil ] ]
