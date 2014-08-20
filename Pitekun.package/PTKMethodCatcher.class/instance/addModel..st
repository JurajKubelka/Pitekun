report manipulation
addModel: anObject 
	| node |
	(self report nodeFromModel: anObject) ifNotNil: [ :aNode | ^ aNode ].
	node := anObject asPTKNode.
	self configureItem: node.
	self addNode: node.
	^ node