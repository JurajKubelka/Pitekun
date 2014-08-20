report manipulation
addImplementorsOfAst: anAstNode from: aNode
	"(self report nodeThat: [ :eachNode | eachNode isMethod and: [ eachNode selector = aSymbol ] ])
		ifNotNil: [ :foundNode | ^ foundNode ]."
	| compiledMethods node  implementors |
	compiledMethods := self systemExpert allImplementorsOf: anAstNode selector.
	implementors := compiledMethods collect: #asPTKNode as: PTKNodes.
	implementors do: [ :eachNode | self configureItem: eachNode ].
	node := PTKImplementors new sourceNode: aNode; methods: implementors; ast: anAstNode; yourself.
	self configureItem: node.
	^ self addNode: node.