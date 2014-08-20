report accessing
nodesThat: oneArgBlock
	| nodes |
	nodes := self oldCobweb nodesThat: oneArgBlock.
	^ nodes 
		ifEmpty: [ self newNodes select: oneArgBlock ]
		ifNotEmpty: [ nodes removeAllFoundIn: self removedNodes ]