report manipulation
rawAddImplementorsOf: aSymbol node: aNode
	| compiledMethods |
	compiledMethods := self systemExpert allImplementorsOf: aSymbol.
	^ self addNodes: (compiledMethods collect: #asPTKNode).