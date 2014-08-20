accessing
connects: aNode
	^ self source = aNode or: [ self target = aNode ]