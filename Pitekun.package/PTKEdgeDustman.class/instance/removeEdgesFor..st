report manipulation
removeEdgesFor: aNode
	| removed |
	removed := OrderedCollection new.
	self report edgesDo: [ :eachEdge |
		(eachEdge connects: aNode) ifTrue: [ 
			self report removedEdge: eachEdge.
			removed add: eachEdge ] ].
	self report newEdges removeAllFoundIn: removed.