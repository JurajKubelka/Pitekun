report manipulation
addImplementorsOf: aSymbol from: aNode
	(self report nodeThat: [ :eachNode | eachNode isMethod and: [ eachNode selector = aSymbol ] ])
		ifNotNil: [ :foundNode | ^ foundNode ].
	^ self rawAddImplementorsOf: aSymbol node: aNode