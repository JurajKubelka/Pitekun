report accessing
chainsToNode: aNode length: anInteger chain: aChain
	anInteger = 0 ifTrue: [ chains add: aChain. ^ self ].
	(report edgesTo: aNode) do: [ :eachEdge | | newChain |
		newChain := aChain copy.
		newChain addEdge: eachEdge.
		self chainsToNode: eachEdge from length: anInteger - 1 chain: newChain ]