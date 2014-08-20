double dispatching
addEdgeFromNode: sourceMethod toNode: targetMethod 
	(self report includesEdgeFrom: sourceMethod to: targetMethod)
		ifTrue: [ ^ self ].
	^ self addEdge: (
				PTKEdge new 
					source: sourceMethod; 
					target: targetMethod; 
					yourself)