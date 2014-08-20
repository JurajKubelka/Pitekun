report manipulation
allAccessesTo: aRBVariableNode from: aPTKMethod 
	| compiledMethods node variables |
	compiledMethods := self systemExpert 
										allAccessesTo: aRBVariableNode name
										from: aPTKMethod methodClass.
	variables := compiledMethods collect: #asPTKNode as: PTKNodes.
	variables do: [ :eachNode | self configureItem: eachNode ].
	node := PTKVariables new sourceNode: aPTKMethod; methods: variables; ast: aRBVariableNode; yourself.
	self configureItem: node.
	^ self addNode: node.