enumerating
nodesDo: aOneArgBlock 
	self oldCobweb nodes do: [ :eachNode |
		(self removedNodes includes: eachNode) 
			ifFalse: [ aOneArgBlock value: eachNode ] ].
	self newNodes do: aOneArgBlock. 